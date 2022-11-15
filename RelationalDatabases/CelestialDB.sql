--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(40),
    galaxy_types character varying(40),
    distance_from_earth numeric(7,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(40),
    galaxy_types character varying(40),
    distance_from_earth numeric(7,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: placeholder; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.placeholder (
    placeholder_id integer NOT NULL,
    name character varying(40) NOT NULL,
    name2 character varying(40)
);


ALTER TABLE public.placeholder OWNER TO freecodecamp;

--
-- Name: placeholder_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.placeholder_placeholder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.placeholder_placeholder_id_seq OWNER TO freecodecamp;

--
-- Name: placeholder_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.placeholder_placeholder_id_seq OWNED BY public.placeholder.placeholder_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(40),
    galaxy_types character varying(40),
    distance_from_earth numeric(7,1),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(40),
    galaxy_types character varying(40),
    distance_from_earth numeric(7,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: placeholder placeholder_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder ALTER COLUMN placeholder_id SET DEFAULT nextval('public.placeholder_placeholder_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Startrek', 'movie galaxy', false, true, 52543, '', '', 1244.4);
INSERT INTO public.galaxy VALUES (2, 'Startrek1', 'movie galaxy', false, true, 52743, '', '', 1244.4);
INSERT INTO public.galaxy VALUES (3, 'Startrek2', 'movie galaxy', false, true, 52543, '', '', 1244.4);
INSERT INTO public.galaxy VALUES (4, 'Startrek3', 'movie galaxy', false, true, 53543, '', '', 1244.4);
INSERT INTO public.galaxy VALUES (5, 'Startrek4', 'movie galaxy', false, true, 52943, '', '', 1244.4);
INSERT INTO public.galaxy VALUES (6, 'Startrek5', 'movie galaxy', false, true, 52543, '', '', 1244.4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Startrek', 'movie galaxy', false, true, 52543, '', '', 1244.4, 1);
INSERT INTO public.moon VALUES (2, 'Startrek1', 'movie galaxy', false, true, 52743, '', '', 1244.4, 5);
INSERT INTO public.moon VALUES (3, 'Startrek2', 'movie galaxy', false, true, 52543, '', '', 1244.4, 12);
INSERT INTO public.moon VALUES (4, 'Startrek3', 'movie galaxy', false, true, 53543, '', '', 1244.4, 11);
INSERT INTO public.moon VALUES (5, 'Startrek4', 'movie galaxy', false, true, 52943, '', '', 1244.4, 10);
INSERT INTO public.moon VALUES (6, 'Startrek5', 'movie galaxy', false, true, 52543, '', '', 1244.4, 1);
INSERT INTO public.moon VALUES (7, 'Startrek6', 'movie galaxy', false, true, 52543, '', '', 1244.4, 6);
INSERT INTO public.moon VALUES (8, 'Startrek7', 'movie galaxy', false, true, 52743, '', '', 1244.4, 1);
INSERT INTO public.moon VALUES (9, 'Startrek8', 'movie galaxy', false, true, 52543, '', '', 1244.4, 1);
INSERT INTO public.moon VALUES (10, 'Startrek9', 'movie galaxy', false, true, 53543, '', '', 1244.0, 1);
INSERT INTO public.moon VALUES (11, 'Startrek10', 'movie galaxy', false, true, 52943, '', '', 1244.0, 1);
INSERT INTO public.moon VALUES (12, 'Startrek11', 'movie galaxy', false, true, 52543, '', '', 1244.0, 1);
INSERT INTO public.moon VALUES (13, 'Startrek12', 'movie galaxy', false, true, 52543, '', '', 1244.4, 5);
INSERT INTO public.moon VALUES (14, 'Startrek13', 'movie galaxy', false, true, 52743, '', '', 1244.4, 6);
INSERT INTO public.moon VALUES (15, 'Startrek14', 'movie galaxy', false, true, 52543, '', '', 1244.4, 5);
INSERT INTO public.moon VALUES (16, 'Startrek15', 'movie galaxy', false, true, 53543, '', '', 1244.4, 5);
INSERT INTO public.moon VALUES (17, 'Startrek16', 'movie galaxy', false, true, 52943, '', '', 1244.4, 2);
INSERT INTO public.moon VALUES (18, 'Startrek17', 'movie galaxy', false, true, 52543, '', '', 1244.4, 4);
INSERT INTO public.moon VALUES (19, 'Startrek18', 'movie galaxy', false, true, 52543, '', '', 1244.4, 6);
INSERT INTO public.moon VALUES (20, 'Startrek19', 'movie galaxy', false, true, 52743, '', '', 1244.4, 1);


--
-- Data for Name: placeholder; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.placeholder VALUES (1, 'Startrek', NULL);
INSERT INTO public.placeholder VALUES (2, 'Startrek1', NULL);
INSERT INTO public.placeholder VALUES (3, 'ungabunga', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Startrek', 'movie galaxy', false, true, 52543, '', '', 1244.4, 5);
INSERT INTO public.planet VALUES (2, 'Startrek1', 'movie galaxy', false, true, 52743, '', '', 1244.4, 2);
INSERT INTO public.planet VALUES (3, 'Startrek2', 'movie galaxy', false, true, 52543, '', '', 1244.4, 3);
INSERT INTO public.planet VALUES (4, 'Startrek3', 'movie galaxy', false, true, 53543, '', '', 1244.4, 1);
INSERT INTO public.planet VALUES (5, 'Startrek4', 'movie galaxy', false, true, 52943, '', '', 1244.4, 1);
INSERT INTO public.planet VALUES (6, 'Startrek5', 'movie galaxy', false, true, 52543, '', '', 1244.4, 1);
INSERT INTO public.planet VALUES (7, 'Startrek6', 'movie galaxy', false, true, 52543, '', '', 1244.4, 1);
INSERT INTO public.planet VALUES (8, 'Startrek7', 'movie galaxy', false, true, 52743, '', '', 1244.4, 1);
INSERT INTO public.planet VALUES (9, 'Startrek8', 'movie galaxy', false, true, 52543, '', '', 1244.4, 1);
INSERT INTO public.planet VALUES (10, 'Startrek9', 'movie galaxy', false, true, 53543, '', '', 1244.0, 1);
INSERT INTO public.planet VALUES (11, 'Startrek11', 'movie galaxy', false, true, 52943, '', '', 1244.0, 1);
INSERT INTO public.planet VALUES (12, 'Startrek111', 'movie galaxy', false, true, 52543, '', '', 1244.0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Startrek', 'movie galaxy', false, true, 52543, '', '', 1244.4, 1);
INSERT INTO public.star VALUES (2, 'Startrek1', 'movie galaxy', false, true, 52743, '', '', 1244.4, 6);
INSERT INTO public.star VALUES (3, 'Startrek2', 'movie galaxy', false, true, 52543, '', '', 1244.4, 4);
INSERT INTO public.star VALUES (4, 'Startrek3', 'movie galaxy', false, true, 53543, '', '', 1244.4, 5);
INSERT INTO public.star VALUES (5, 'Startrek4', 'movie galaxy', false, true, 52943, '', '', 1244.4, 2);
INSERT INTO public.star VALUES (6, 'Startrek5', 'movie galaxy', false, true, 52543, '', '', 1244.4, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: placeholder_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.placeholder_placeholder_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: placeholder placeholder_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT placeholder_name_key UNIQUE (name);


--
-- Name: placeholder placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT placeholder_pkey PRIMARY KEY (placeholder_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

