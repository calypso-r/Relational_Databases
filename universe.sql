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
-- Name: age_mil_yrs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.age_mil_yrs (
    age_mil_yrs_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.age_mil_yrs OWNER TO freecodecamp;

--
-- Name: age_mil_yrs_age_mil_yrs_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.age_mil_yrs_age_mil_yrs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.age_mil_yrs_age_mil_yrs_id_seq OWNER TO freecodecamp;

--
-- Name: age_mil_yrs_age_mil_yrs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.age_mil_yrs_age_mil_yrs_id_seq OWNED BY public.age_mil_yrs.age_mil_yrs_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    description text,
    has_life_q boolean,
    discovered_by character varying(30)
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
    name character varying(30) NOT NULL,
    size integer,
    description text,
    discovered_by character varying(30),
    percent_liquid_water numeric(4,1),
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life_q boolean,
    size integer,
    description text,
    discovered_by character varying(30),
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
    name character varying(30) NOT NULL,
    size integer,
    description text,
    discovered_by character varying(30),
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
-- Name: age_mil_yrs age_mil_yrs_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_mil_yrs ALTER COLUMN age_mil_yrs_id SET DEFAULT nextval('public.age_mil_yrs_age_mil_yrs_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: age_mil_yrs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.age_mil_yrs VALUES (1, 'Young', NULL);
INSERT INTO public.age_mil_yrs VALUES (2, 'Earths Age', NULL);
INSERT INTO public.age_mil_yrs VALUES (3, 'Old', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Meisser 82', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Moon', 1738, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (5, 'Phobos', 11, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Deimos', 6, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Io', 1821, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Europa', 1560, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Ganymede', 2634, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Callisto', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Amalthea', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Himalia', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Elara', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'Pasiphae', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'Sinope', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Lysithea', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'Carme', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Ananke', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'Leda', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'Thebe', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (21, 'Adrastea', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (22, 'Metis', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (23, 'Thyone', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (24, 'Aitne', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (25, 'Eurydome', NULL, NULL, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Urnus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Wolf 1061b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Ross 128 b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Luyten b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Gliese 682 b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Wolf 1061c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'Wolf 1061d', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Hamal', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Fomalhaut', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Alnilam', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Arcturus', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Bellatrix', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Aldebaran', NULL, NULL, NULL, NULL);


--
-- Name: age_mil_yrs_age_mil_yrs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.age_mil_yrs_age_mil_yrs_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: age_mil_yrs age_mil_yrs_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_mil_yrs
    ADD CONSTRAINT age_mil_yrs_name_key UNIQUE (name);


--
-- Name: age_mil_yrs age_mil_yrs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_mil_yrs
    ADD CONSTRAINT age_mil_yrs_pkey PRIMARY KEY (age_mil_yrs_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

