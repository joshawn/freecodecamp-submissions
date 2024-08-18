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
-- Name: asteroid_field; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid_field (
    asteroid_field_id integer NOT NULL,
    is_navigable boolean,
    name character varying(20) NOT NULL
);


ALTER TABLE public.asteroid_field OWNER TO freecodecamp;

--
-- Name: asteroid_field_asteroid_field_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_field_asteroid_field_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_field_asteroid_field_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_field_asteroid_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_field_asteroid_field_id_seq OWNED BY public.asteroid_field.asteroid_field_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovered integer,
    size_in_light_years numeric,
    can_be_reached boolean
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
    year_discovered integer,
    planet_id integer,
    can_be_reached boolean
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
    name character varying(30),
    star_id integer NOT NULL,
    year_discovered integer,
    description text,
    has_life boolean,
    has_solid_core boolean,
    can_be_reached boolean
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    year_discovered integer,
    can_be_reached boolean
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
-- Name: asteroid_field asteroid_field_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_field ALTER COLUMN asteroid_field_id SET DEFAULT nextval('public.asteroid_field_asteroid_field_id_seq'::regclass);


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
-- Data for Name: asteroid_field; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid_field VALUES (1, false, 'Death trap');
INSERT INTO public.asteroid_field VALUES (2, true, 'Good luck');
INSERT INTO public.asteroid_field VALUES (3, true, 'Say your goodbyes');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'spiriolis', 1489, 182998, NULL);
INSERT INTO public.galaxy VALUES (2, 'bigium', 1285, 283949, NULL);
INSERT INTO public.galaxy VALUES (3, 'smol', 1777, 94829, NULL);
INSERT INTO public.galaxy VALUES (4, 'lighty', 1124, 283497, NULL);
INSERT INTO public.galaxy VALUES (5, 'spiller', 1108, 138424, NULL);
INSERT INTO public.galaxy VALUES (6, 'thinny', 1882, 1234877, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'titus', 1572, 1, NULL);
INSERT INTO public.moon VALUES (2, 'minum', 1857, 1, NULL);
INSERT INTO public.moon VALUES (3, 'pluty', 1642, 1, NULL);
INSERT INTO public.moon VALUES (4, 'zimpo', 1774, 1, NULL);
INSERT INTO public.moon VALUES (5, 'scee', 1888, 1, NULL);
INSERT INTO public.moon VALUES (6, '42', 1942, 1, NULL);
INSERT INTO public.moon VALUES (7, 'gargantuan', 1660, 1, NULL);
INSERT INTO public.moon VALUES (8, 'fjord', 1832, 1, NULL);
INSERT INTO public.moon VALUES (9, 'brutus', 1699, 1, NULL);
INSERT INTO public.moon VALUES (10, 'gerry', 1749, 1, NULL);
INSERT INTO public.moon VALUES (11, 'sincere', 1882, 1, NULL);
INSERT INTO public.moon VALUES (12, 'chiemeka', 1998, 1, NULL);
INSERT INTO public.moon VALUES (13, 'radha', 1691, 1, NULL);
INSERT INTO public.moon VALUES (14, 'egypt', 102, 1, NULL);
INSERT INTO public.moon VALUES (15, 'thano', 2018, 1, NULL);
INSERT INTO public.moon VALUES (16, 'janus', 1740, 1, NULL);
INSERT INTO public.moon VALUES (17, 'apoc', 1408, 1, NULL);
INSERT INTO public.moon VALUES (18, 'kata', 1920, 1, NULL);
INSERT INTO public.moon VALUES (19, 'didi', 1844, 1, NULL);
INSERT INTO public.moon VALUES (20, 'saska', 1921, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth2', 2, 1602, 'very similar to earth', true, true, NULL);
INSERT INTO public.planet VALUES (2, 'gassy', 6, 1820, 'green and stinky', false, false, NULL);
INSERT INTO public.planet VALUES (3, 'venurcury', 1, 1933, 'basically a mix of venus and mercury', false, true, NULL);
INSERT INTO public.planet VALUES (4, 'hothe', 5, 1890, 'are those jedi?', true, true, NULL);
INSERT INTO public.planet VALUES (5, 'grimm', 4, 2011, 'no sign of life, yet', false, true, NULL);
INSERT INTO public.planet VALUES (6, 'supa hot fire', 3, 1601, 'blue star makes this boi hot', false, true, NULL);
INSERT INTO public.planet VALUES (7, 'holy', 2, 1603, 'literally just has holes', false, true, NULL);
INSERT INTO public.planet VALUES (8, 'lavagirl', 3, 1684, 'oceans flowing with lava', false, true, NULL);
INSERT INTO public.planet VALUES (9, 'sharkbois', 2, 1901, 'bunch a sharks hangin out', true, true, NULL);
INSERT INTO public.planet VALUES (10, 'stinkbomb', 6, 1990, 'birds that live eternally in the air', true, false, NULL);
INSERT INTO public.planet VALUES (11, 'shiner', 1, 1741, 'thought it was a star, just all metal', false, true, NULL);
INSERT INTO public.planet VALUES (12, 'earth3', 2, 2019, 'a multiverse?', true, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'brightius', 1, 1258, NULL);
INSERT INTO public.star VALUES (2, 'red one', 2, 1508, NULL);
INSERT INTO public.star VALUES (3, 'blue one', 2, 1535, NULL);
INSERT INTO public.star VALUES (4, 'dimmer', 2, 1993, NULL);
INSERT INTO public.star VALUES (5, 'blinky', 6, 1743, NULL);
INSERT INTO public.star VALUES (6, 'musty', 5, 1484, NULL);


--
-- Name: asteroid_field_asteroid_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_field_asteroid_field_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid_field asteroid_field_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_field
    ADD CONSTRAINT asteroid_field_name_key UNIQUE (name);


--
-- Name: asteroid_field asteroid_field_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_field
    ADD CONSTRAINT asteroid_field_pkey PRIMARY KEY (asteroid_field_id);


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

