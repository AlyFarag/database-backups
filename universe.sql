--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    type text,
    size integer,
    distance numeric
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
-- Name: galaxy_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_star (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.galaxy_star OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity numeric,
    mass integer,
    distance numeric,
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
    gravity numeric,
    mass integer,
    distance numeric,
    rings boolean,
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
    type text,
    size integer,
    distance numeric,
    rings boolean,
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

INSERT INTO public.galaxy VALUES (1, 'AA', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (2, 'BB', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (3, 'CC', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (4, 'DD', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (5, 'EE', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (6, 'FF', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (7, 'GG', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (8, 'KK', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (9, 'KK', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (10, 'LL', 'ABC', 1234, 12345);


--
-- Data for Name: galaxy_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_star VALUES (1, 1);
INSERT INTO public.galaxy_star VALUES (3, 3);
INSERT INTO public.galaxy_star VALUES (5, 5);
INSERT INTO public.galaxy_star VALUES (4, 4);
INSERT INTO public.galaxy_star VALUES (6, 6);
INSERT INTO public.galaxy_star VALUES (7, 7);
INSERT INTO public.galaxy_star VALUES (8, 8);
INSERT INTO public.galaxy_star VALUES (9, 9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'QQAS', 9.8, 12345, 123, 1);
INSERT INTO public.moon VALUES (4, 'QA', 9.8, 12345, 123, 1);
INSERT INTO public.moon VALUES (5, 'KL', 9.8, 12345, 123, 1);
INSERT INTO public.moon VALUES (6, 'KHL', 9.8, 12345, 123, 4);
INSERT INTO public.moon VALUES (7, 'HL', 9.8, 12345, 123, 6);
INSERT INTO public.moon VALUES (8, 'HML', 9.8, 12345, 123, 6);
INSERT INTO public.moon VALUES (9, 'HQML', 9.8, 12345, 123, 6);
INSERT INTO public.moon VALUES (10, 'HweL', 9.8, 12345, 123, 7);
INSERT INTO public.moon VALUES (11, 'HeL', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (12, 'HeeL', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (13, 'Palestine', 9.8, 12345, 123, 11);
INSERT INTO public.moon VALUES (14, 'free Palestine', 9.8, 12345, 123, 11);
INSERT INTO public.moon VALUES (15, 'free Palestine gaza', 9.8, 12345, 123, 12);
INSERT INTO public.moon VALUES (16, 'free gaza', 9.8, 12345, 123, 13);
INSERT INTO public.moon VALUES (17, 'free', 9.8, 12345, 123, 15);
INSERT INTO public.moon VALUES (18, 'fyte', 9.8, 12345, 123, 16);
INSERT INTO public.moon VALUES (21, 'fsate', 9.8, 12345, 123, 15);
INSERT INTO public.moon VALUES (22, 'AA', 9.8, 12345, 123, 17);
INSERT INTO public.moon VALUES (23, 'BB', 9.8, 12345, 123, 17);
INSERT INTO public.moon VALUES (24, 'BC', 9.8, 12345, 123, 18);
INSERT INTO public.moon VALUES (25, 'BG', 9.8, 12345, 123, 18);
INSERT INTO public.moon VALUES (26, 'FG', 9.8, 12345, 123, 19);
INSERT INTO public.moon VALUES (27, 'FGH', 9.8, 12345, 123, 13);
INSERT INTO public.moon VALUES (28, 'FGDH', 9.8, 12345, 123, 13);
INSERT INTO public.moon VALUES (29, 'FGWDH', 9.8, 12345, 123, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'WQ', 9.8, 12345, 123, true, 1);
INSERT INTO public.planet VALUES (4, 'BB', 9.8, 12345, 123, true, 3);
INSERT INTO public.planet VALUES (5, 'CC', 9.8, 12345, 123, true, 4);
INSERT INTO public.planet VALUES (6, 'DD', 9.8, 12345, 123, true, 5);
INSERT INTO public.planet VALUES (7, 'EE', 9.8, 12345, 123, true, 5);
INSERT INTO public.planet VALUES (8, 'EW', 9.8, 12345, 123, true, 1);
INSERT INTO public.planet VALUES (10, 'QA', 9.8, 12345, 123, true, 6);
INSERT INTO public.planet VALUES (11, 'QQ', 9.8, 12345, 123, true, 7);
INSERT INTO public.planet VALUES (12, 'ER', 9.8, 12345, 123, true, 8);
INSERT INTO public.planet VALUES (13, 'WR', 9.8, 12345, 123, true, 8);
INSERT INTO public.planet VALUES (14, 'RR', 9.8, 12345, 123, true, 9);
INSERT INTO public.planet VALUES (15, 'QWE', 9.8, 12345, 123, true, 10);
INSERT INTO public.planet VALUES (16, 'QWEM', 9.8, 12345, 123, true, 10);
INSERT INTO public.planet VALUES (17, 'QM', 9.8, 12345, 123, true, 10);
INSERT INTO public.planet VALUES (18, 'QMAS', 9.8, 12345, 123, true, 10);
INSERT INTO public.planet VALUES (19, 'QQAS', 9.8, 12345, 123, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AA', 'ABC', 1234, 12345, true, 1);
INSERT INTO public.star VALUES (3, 'BB', 'ABC', 1234, 12345, true, 2);
INSERT INTO public.star VALUES (4, 'CC', 'ABC', 1234, 12345, true, 3);
INSERT INTO public.star VALUES (5, 'EE', 'ABC', 1234, 12345, true, 4);
INSERT INTO public.star VALUES (6, 'EF', 'ABC', 1234, 12345, true, 5);
INSERT INTO public.star VALUES (7, 'FF', 'ABC', 1234, 12345, true, 6);
INSERT INTO public.star VALUES (8, 'RR', 'ABC', 1234, 12345, true, 7);
INSERT INTO public.star VALUES (9, 'TT', 'ABC', 1234, 12345, true, 7);
INSERT INTO public.star VALUES (10, 'WQ', 'ABC', 1234, 12345, true, 9);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_star galaxy_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_pkey PRIMARY KEY (galaxy_id, star_id);


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
-- Name: galaxy_star galaxy_star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_star galaxy_star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

