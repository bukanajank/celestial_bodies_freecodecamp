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
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric
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
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying,
    description text NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
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
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'G1', 'Name of Galaxy 1', true, true, 666);
INSERT INTO public.galaxy VALUES (2, 'G2', 'Name of Galaxy 2', true, true, 666);
INSERT INTO public.galaxy VALUES (3, 'G3', 'Name of Galaxy 3', true, true, 666);
INSERT INTO public.galaxy VALUES (4, 'G4', 'Name of Galaxy 4', true, true, 666);
INSERT INTO public.galaxy VALUES (5, 'G5', 'Name of Galaxy 5', true, true, 666);
INSERT INTO public.galaxy VALUES (6, 'G6', 'Name of Galaxy 6', true, true, 666);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Planet 1A', 'Name of Moon 1A', true, true, 666, 1);
INSERT INTO public.moon VALUES (2, 'Planet 1B', 'Name of Moon 1B', true, true, 666, 1);
INSERT INTO public.moon VALUES (3, 'Planet 1C', 'Name of Moon 1C', true, true, 666, 1);
INSERT INTO public.moon VALUES (4, 'Planet 1D', 'Name of Moon 1D', true, true, 666, 1);
INSERT INTO public.moon VALUES (5, 'Planet 2A', 'Name of Moon 2A', true, true, 666, 2);
INSERT INTO public.moon VALUES (6, 'Planet 2B', 'Name of Moon 2B', true, true, 666, 2);
INSERT INTO public.moon VALUES (7, 'Planet 3A', 'Name of Moon 3A', true, true, 666, 3);
INSERT INTO public.moon VALUES (8, 'Planet 4A', 'Name of Moon 4A', true, true, 666, 4);
INSERT INTO public.moon VALUES (9, 'Planet 4B', 'Name of Moon 4B', true, true, 666, 4);
INSERT INTO public.moon VALUES (10, 'Planet 4C', 'Name of Moon 4C', true, true, 666, 4);
INSERT INTO public.moon VALUES (11, 'Planet 5A', 'Name of Moon 5A', true, true, 666, 5);
INSERT INTO public.moon VALUES (12, 'Planet 5B', 'Name of Moon 5B', true, true, 666, 5);
INSERT INTO public.moon VALUES (13, 'Planet 6A', 'Name of Moon 6A', true, true, 666, 6);
INSERT INTO public.moon VALUES (14, 'Planet 6B', 'Name of Moon 6B', true, true, 666, 6);
INSERT INTO public.moon VALUES (15, 'Planet 7B', 'Name of Moon 7B', true, true, 666, 7);
INSERT INTO public.moon VALUES (16, 'Planet 8A', 'Name of Moon 8A', true, true, 666, 8);
INSERT INTO public.moon VALUES (17, 'Planet 8B', 'Name of Moon 8B', true, true, 666, 8);
INSERT INTO public.moon VALUES (18, 'Planet 8C', 'Name of Moon 8C', true, true, 666, 8);
INSERT INTO public.moon VALUES (19, 'Planet 9A', 'Name of Moon 9A', true, true, 666, 9);
INSERT INTO public.moon VALUES (20, 'Planet 9B', 'Name of Moon 9B', true, true, 666, 9);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'A', 'AA');
INSERT INTO public.more_info VALUES (2, 'B', 'AA');
INSERT INTO public.more_info VALUES (3, 'C', 'AA');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A1', 'Name of Planet A1', true, true, 666, 1);
INSERT INTO public.planet VALUES (2, 'Planet A2', 'Name of Planet A2', true, true, 666, 1);
INSERT INTO public.planet VALUES (3, 'Planet B1', 'Name of Planet B1', true, true, 666, 2);
INSERT INTO public.planet VALUES (4, 'Planet B2', 'Name of Planet B2', true, true, 666, 2);
INSERT INTO public.planet VALUES (5, 'Planet C1', 'Name of Planet C1', true, true, 666, 3);
INSERT INTO public.planet VALUES (6, 'Planet C2', 'Name of Planet C2', true, true, 666, 3);
INSERT INTO public.planet VALUES (7, 'Planet D1', 'Name of Planet D1', true, true, 666, 4);
INSERT INTO public.planet VALUES (8, 'Planet D2', 'Name of Planet D2', true, true, 666, 4);
INSERT INTO public.planet VALUES (9, 'Planet E1', 'Name of Planet E1', true, true, 666, 5);
INSERT INTO public.planet VALUES (10, 'Planet E2', 'Name of Planet E2', true, true, 666, 5);
INSERT INTO public.planet VALUES (11, 'Planet F1', 'Name of Planet F1', true, true, 666, 6);
INSERT INTO public.planet VALUES (12, 'Planet F2', 'Name of Planet F2', true, true, 666, 6);
INSERT INTO public.planet VALUES (13, 'Planet G1', 'Name of Planet G1', true, true, 666, 7);
INSERT INTO public.planet VALUES (14, 'Planet G2', 'Name of Planet G2', true, true, 666, 7);
INSERT INTO public.planet VALUES (15, 'Planet H2', 'Name of Planet H2', true, true, 666, 8);
INSERT INTO public.planet VALUES (16, 'Planet H1', 'Name of Planet H1', true, true, 666, 8);
INSERT INTO public.planet VALUES (17, 'Planet I1', 'Name of Planet I1', true, true, 666, 9);
INSERT INTO public.planet VALUES (18, 'Planet I2', 'Name of Planet I2', true, true, 666, 9);
INSERT INTO public.planet VALUES (19, 'Planet J2', 'Name of Planet J2', true, true, 666, 10);
INSERT INTO public.planet VALUES (20, 'Planet J1', 'Name of Planet J1', true, true, 666, 10);
INSERT INTO public.planet VALUES (21, 'Planet K1', 'Name of Planet K1', true, true, 666, 11);
INSERT INTO public.planet VALUES (22, 'Planet K2', 'Name of Planet K2', true, true, 666, 11);
INSERT INTO public.planet VALUES (23, 'Planet L2', 'Name of Planet L2', true, true, 666, 12);
INSERT INTO public.planet VALUES (24, 'Planet L1', 'Name of Planet L1', true, true, 666, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 'Name of Star 1', true, true, 666, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 'Name of Star 2', true, true, 666, 2);
INSERT INTO public.star VALUES (3, 'Star 3', 'Name of Star 3', true, true, 666, 3);
INSERT INTO public.star VALUES (4, 'Star 4', 'Name of Star 4', true, true, 666, 4);
INSERT INTO public.star VALUES (5, 'Star 5', 'Name of Star 5', true, true, 666, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 'Name of Star 6', true, true, 666, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_id_key UNIQUE (more_info_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet__id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet__id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

