CREATE SCHEMA IF NOT EXISTS import;

DROP TABLE IF EXISTS import.master_plan CASCADE;

DROP TABLE IF EXISTS events CASCADE;
DROP TABLE IF EXISTS teams CASCADE;
DROP TABLE IF EXISTS targets CASCADE;
DROP TABLE IF EXISTS spass_types CASCADE;
DROP TABLE IF EXISTS requests CASCADE;
DROP TABLE IF EXISTS event_types CASCADE;


create table import.master_plan(
    start_time_utc text,
    duration text,
    date text,
    team text, 
    spass_type text, --
    target text, 
    request_name text,
    library_definition text, --
    title text, 
    description text
);

COPY import.master_plan FROM '/mnt/f/curious_moon/data/master_plan.csv' with DELIMITER ',' HEADER CSV;
-- events

DROP TABLE IF EXISTS event_types CASCADE;

SELECT DISTINCT(library_definition)
AS description 
INTO event_types
FROM import.master_plan;

ALTER TABLE event_types
ADD id SERIAL PRIMARY KEY;

--spass

DROP TABLE IF EXISTS spass_types CASCADE;

SELECT DISTINCT(spass_type)
AS description 
INTO spass_types
FROM import.master_plan;

ALTER TABLE spass_types
ADD id SERIAL PRIMARY KEY;

-- targets

DROP TABLE IF EXISTS targets CASCADE;

SELECT DISTINCT(target)
AS description 
INTO targets
FROM import.master_plan;

ALTER TABLE targets
ADD id SERIAL PRIMARY KEY;

-- teams

DROP TABLE IF EXISTS teams CASCADE;

SELECT DISTINCT(team)
AS description 
INTO teams
FROM import.master_plan;

ALTER TABLE teams
ADD id SERIAL PRIMARY KEY;

-- requests

DROP TABLE IF EXISTS requests CASCADE;

SELECT DISTINCT(request_name)
AS description 
INTO requests
FROM import.master_plan;

ALTER TABLE requests
ADD id SERIAL PRIMARY KEY;


DROP TABLE IF EXISTS events CASCADE;

CREATE TABLE events(
    id SERIAL PRIMARY KEY,
    time_stamp timestamptz not null,
    title varchar(500),
    description text,
    event_type_id int references event_types(id),
    spass_type_id int references spass_types(id),
    target_id int references targets(id), 
    team_id int references teams(id), 
    request_id int references requests(id)
);

INSERT INTO events(
    time_stamp,
    title,
    description,
    event_type_id,
    target_id,
    team_id,
    request_id,
    spass_type_id
)
SELECT 
    import.master_plan.start_time_utc::timestamp,
    import.master_plan.title,
    import.master_plan.description,
    event_types.id AS event_type_id,
    targets.id AS target_id,
    teams.id AS team_id,
    requests.id AS request_id,
    spass_types.id AS spass_type_id 
FROM import.master_plan
LEFT JOIN event_types
    ON event_types.description
    = import.master_plan.library_definition
LEFT JOIN targets
    ON targets.description
    = import.master_plan.target
LEFT JOIN teams
    ON teams.description
    = import.master_plan.team
LEFT JOIN requests
    ON requests.description
    = import.master_plan.request_name
LEFT JOIN spass_types
    ON spass_types.description
    = import.master_plan.spass_type;

