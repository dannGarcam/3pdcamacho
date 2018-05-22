--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: tercerexamenbd; Type: DATABASE; Schema: -; Owner: examen3_user
--

CREATE DATABASE tercerexamenbd WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE tercerexamenbd OWNER TO examen2_user;

\connect tercerexamenbd

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;


-- Name: usuarios; Type: TABLE; Schema: public; Owner: examen3_user
--

CREATE TABLE usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(30) NOT NULL,
    apaterno character varying(30) NOT NULL,
    amaterno character varying(30),
    correo character varying(30) NOT NULL,
    telefono character varying(30) NOT NULL,
    usuario character varying(20) NOT NULL,
    "contraseña" character varying(30) NOT NULL
);


ALTER TABLE usuarios OWNER TO examen3_user;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: examen3_user
--

CREATE SEQUENCE usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuarios_id_usuario_seq OWNER TO examen3_user;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: examen3_user
--

ALTER SEQUENCE usuarios_id_usuario_seq OWNED BY usuarios.id_usuario;

--
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: examen3_user
--

ALTER TABLE ONLY usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios_id_usuario_seq'::regclass);


-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: examen3_user
--

COPY usuarios (id_usuario, nombre, apaterno, amaterno, telefono,correo, usuario, "contraseña") FROM stdin;
\.


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: examen3_user
--

SELECT pg_catalog.setval('usuarios_id_usuario_seq', 1, false);



--
-- PostgreSQL database dump complete
--

