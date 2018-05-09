## RUN psql enceladus -f /mnt/c/GitHub/learning_psql/psql/part001_transit.sql

drop table if exists mission_plan;

create table master_plan(
    the_date date,
    title varchar(100),
    description text
);

drop table master_plan;

drop table if exists master_plan;
create table master_plan(
    id serial primary key,
    the_date date,
    title varchar(100),
    description text
);

drop table if exists master_plan;
CREATE SCHEMA IF NOT EXISTS import;

drop table if exists import.master_plan;
DROP TABLE IF EXISTS master_plan;
create table import.master_plan(
    start_time_utc text,
    duration text,
    date text,
    team text, 
    spass_type text, 
    target text, 
    request_name text,
    library_definition text,
    title text, 
    description text
);

COPY import.master_plan
FROM '/mnt/f/curious_moon/data/master_plan.csv'
WITH DELIMITER ',' HEADER CSV;