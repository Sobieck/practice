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
INNER JOIN event_types
    ON event_types.description
    = import.master_plan.library_definition
INNER JOIN targets
    ON targets.description
    = import.master_plan.library_definition
INNER JOIN teams
    ON teams.description
    = import.master_plan.library_definition
INNER JOIN requests
    ON requests.description
    = import.master_plan.library_definition
INNER JOIN spass_types
    ON spass_types.description
    = import.master_plan.library_definition;