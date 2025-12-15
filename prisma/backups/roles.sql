--
-- PostgreSQL database cluster dump
--

\restrict Tc1S3689ZcjxEaxLFiU8a99EwYkvhN9HjwkufbZzrv82IB3bdjJSSP7GC1K9Gkr

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE anon;
ALTER ROLE anon WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE authenticated;
ALTER ROLE authenticated WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE authenticator;
ALTER ROLE authenticator WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:MeQlSE4RI6UWrspv88pxqw==$7UuVPBScLwjmFpTcBQ5Zmhptuztid2aVymhmZ7uyqwc=:6ROcQy6XLCrgyMJnPmEUN11fqU12CjzUkG4NfLbH69M=';
CREATE ROLE cli_login_postgres;
ALTER ROLE cli_login_postgres WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:IBR4a9UJqcAR/VeuUTgA4w==$pRSvJLZF1GED8bVLP1vsQipg5ROPdUJSTbHZ+Z8C8mY=:focquPUBsHKqeGXrI1daXK99TNR9Ib/BjeaRMeDQp9k=' VALID UNTIL '2025-11-05 15:11:00.892773+00';
CREATE ROLE dashboard_user;
ALTER ROLE dashboard_user WITH NOSUPERUSER INHERIT CREATEROLE CREATEDB NOLOGIN REPLICATION NOBYPASSRLS;
CREATE ROLE pgbouncer;
ALTER ROLE pgbouncer WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:U37wZQH3W/3MuGlHgcjbCQ==$gxCiWZHb7IKm3AvbMOC/EtpJIy9ecVYtqsECbYYvXX0=:ysFYt/5NjKSN6eFriePO42vVBmeJ0fl/6JorxTXGwng=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH NOSUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:dPNNpgPZ3e6F4DSRqSRRcg==$5gCqkzA1W/ITsz7qjYiArb7SHdwOJGUkOQPcEKjdPMM=:ENhriKpZHSzCGxB5B6ycKqYDtW5VSffUe+0wfXDbOao=';
CREATE ROLE service_role;
ALTER ROLE service_role WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION BYPASSRLS;
CREATE ROLE supabase_admin;
ALTER ROLE supabase_admin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:B2IsCWYIY/PMxnNPkUih2w==$c8e1hSB6DDikB1gMj5m9WcL7qW7au6tcACl+4hfhsnw=:3bin9omIYRKFJAA39dYVaRNZU84SLRiLLMkHJBaBE/4=';
CREATE ROLE supabase_auth_admin;
ALTER ROLE supabase_auth_admin WITH NOSUPERUSER NOINHERIT CREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:usR48VzLxD5mENrD1otjfg==$kANuFLjHGA1QDZfeSr+5Af3kTYPp14OgviFJ8Yb8JIk=:cZb/nrzRhddmVTtCsuHrlIs/u4/wMOiQVs5+2HHp1fg=';
CREATE ROLE supabase_etl_admin;
ALTER ROLE supabase_etl_admin WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN REPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:pSYO/JeC7hsjvgX/ceZQ/Q==$72c1EdUG1Vtug5xskAw/orhGiO6FGI9QFDdOPw2bGOk=:QSrJio4e9xaA9VcDDlPMfDfqQzIXgdIzAO/jKqPF5HU=';
CREATE ROLE supabase_read_only_user;
ALTER ROLE supabase_read_only_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:1KzvxPUhPQNKgqe7zTUFEg==$EyL0VxvuPLpiIl28tgJ6+nfhZlvXGJ5GXJJEjirgh34=:r8DVrvGMLXzynf+gYDYm9N3YiDkIY0AKM0nQqd23Xtc=';
CREATE ROLE supabase_realtime_admin;
ALTER ROLE supabase_realtime_admin WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE supabase_replication_admin;
ALTER ROLE supabase_replication_admin WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN REPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:XqP9dGGnIdl1sL2t7bScgw==$ww1koV6H6QzPAR2MP+w1SIvhoxqafiaNRf2CbwUEtIE=:j/iYF5jr+ya+7Dm329AqNCsVkGbUQ/82ZyYVkWQhWec=';
CREATE ROLE supabase_storage_admin;
ALTER ROLE supabase_storage_admin WITH NOSUPERUSER NOINHERIT CREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:lW7bB3ci9btq/x27oFSuPQ==$Pa5oScdFyjg5oncVpoRanPZlMZq8etuqXYrEWcuPc/4=:M/5PZZNbmvzybF2WqDManlE8SxwwRdQXcpOeoQNHZkk=';

--
-- User Configurations
--

--
-- User Config "anon"
--

ALTER ROLE anon SET statement_timeout TO '3s';

--
-- User Config "authenticated"
--

ALTER ROLE authenticated SET statement_timeout TO '8s';

--
-- User Config "authenticator"
--

ALTER ROLE authenticator SET session_preload_libraries TO 'safeupdate';
ALTER ROLE authenticator SET statement_timeout TO '8s';
ALTER ROLE authenticator SET lock_timeout TO '8s';

--
-- User Config "postgres"
--

ALTER ROLE postgres SET search_path TO E'\\$user', 'public', 'extensions';

--
-- User Config "supabase_admin"
--

ALTER ROLE supabase_admin SET search_path TO '$user', 'public', 'auth', 'extensions';
ALTER ROLE supabase_admin SET log_statement TO 'none';

--
-- User Config "supabase_auth_admin"
--

ALTER ROLE supabase_auth_admin SET search_path TO 'auth';
ALTER ROLE supabase_auth_admin SET idle_in_transaction_session_timeout TO '60000';
ALTER ROLE supabase_auth_admin SET log_statement TO 'none';

--
-- User Config "supabase_read_only_user"
--

ALTER ROLE supabase_read_only_user SET default_transaction_read_only TO 'on';

--
-- User Config "supabase_storage_admin"
--

ALTER ROLE supabase_storage_admin SET search_path TO 'storage';
ALTER ROLE supabase_storage_admin SET log_statement TO 'none';


--
-- Role memberships
--

GRANT anon TO authenticator WITH INHERIT FALSE GRANTED BY supabase_admin;
GRANT anon TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT authenticated TO authenticator WITH INHERIT FALSE GRANTED BY supabase_admin;
GRANT authenticated TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT authenticator TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT authenticator TO supabase_storage_admin WITH INHERIT FALSE GRANTED BY supabase_admin;
GRANT pg_create_subscription TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT pg_monitor TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT pg_monitor TO supabase_etl_admin WITH INHERIT TRUE GRANTED BY supabase_admin;
GRANT pg_monitor TO supabase_read_only_user WITH INHERIT TRUE GRANTED BY supabase_admin;
GRANT pg_read_all_data TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT pg_read_all_data TO supabase_etl_admin WITH INHERIT TRUE GRANTED BY supabase_admin;
GRANT pg_read_all_data TO supabase_read_only_user WITH INHERIT TRUE GRANTED BY supabase_admin;
GRANT pg_signal_backend TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT postgres TO cli_login_postgres WITH INHERIT FALSE GRANTED BY supabase_admin;
GRANT service_role TO authenticator WITH INHERIT FALSE GRANTED BY supabase_admin;
GRANT service_role TO postgres WITH ADMIN OPTION, INHERIT TRUE GRANTED BY supabase_admin;
GRANT supabase_realtime_admin TO postgres WITH INHERIT TRUE GRANTED BY supabase_admin;




\unrestrict Tc1S3689ZcjxEaxLFiU8a99EwYkvhN9HjwkufbZzrv82IB3bdjJSSP7GC1K9Gkr

--
-- PostgreSQL database cluster dump complete
--

