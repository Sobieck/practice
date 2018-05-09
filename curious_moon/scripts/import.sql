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
 
