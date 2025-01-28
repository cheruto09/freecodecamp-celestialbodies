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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255),
    tails boolean NOT NULL,
    nucleus_in_metres integer,
    composition text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    description text,
    size_in_light_years integer NOT NULL,
    speed_in_km_per_second integer
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
    name character varying(255) NOT NULL,
    surface character varying(255),
    size integer,
    phases character varying(255),
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
    name character varying(255),
    size_in_diameter numeric,
    composition text,
    life boolean NOT NULL,
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
    name character varying(255) NOT NULL,
    colour text,
    size_in_solar_radius integer,
    temprature_in_kelvin integer,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Destruction', true, 175, 'Dust');
INSERT INTO public.comet VALUES (2, 'Love and Light', true, 567, 'Peace of Mind');
INSERT INTO public.comet VALUES (3, 'Goodbye', true, 234, 'Alohas and Adios');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bumble Bee', 'Poisonus bees territory', 400, 345);
INSERT INTO public.galaxy VALUES (2, 'Fury Fairy', 'High-tempered fairies', 500, 465);
INSERT INTO public.galaxy VALUES (3, 'Love Island', 'Everyday is Valentines', 600, 576);
INSERT INTO public.galaxy VALUES (4, 'Tutty Fruity', 'Anything Fruit', 700, 743);
INSERT INTO public.galaxy VALUES (5, 'Milk & Honey', 'We got that drip drip!!', 800, 987);
INSERT INTO public.galaxy VALUES (6, 'Alien HQ', 'We better than humans', 900, 1087);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Sprinkles', 'Glitter', 543, 'Glowing', 2);
INSERT INTO public.moon VALUES (2, 'Royals', 'Gold', 234, 'Shining Bright', 1);
INSERT INTO public.moon VALUES (3, 'Cupid', 'Bows and Arrows', 509, 'Ready', 3);
INSERT INTO public.moon VALUES (4, 'Hate', 'Jealousy', 671, 'Boiling nicely', 6);
INSERT INTO public.moon VALUES (5, 'Butter', 'Sliced', 398, 'Broken', 5);
INSERT INTO public.moon VALUES (6, 'Tropical', 'Sunshine', 286, 'Hot', 4);
INSERT INTO public.moon VALUES (7, 'Bowls', 'Wood', 876, 'Ready to Eat', 4);
INSERT INTO public.moon VALUES (8, 'Honey cubes', 'Molasses', 903, 'Sweetest', 5);
INSERT INTO public.moon VALUES (9, 'Unicorn', 'Carpets', 9, 'Flying', 2);
INSERT INTO public.moon VALUES (10, 'Sting', 'Poison', 777, 'Gibbous', 1);
INSERT INTO public.moon VALUES (11, 'IDK', 'Mirrors', 23, 'New moon', 6);
INSERT INTO public.moon VALUES (12, 'Hive', 'Honey', 5678, 'Raw', 1);
INSERT INTO public.moon VALUES (13, 'Valentine', 'Stereo love', 219, 'Full', 3);
INSERT INTO public.moon VALUES (14, 'I love you', 'Love & Laughter', 312, 'Healed', 3);
INSERT INTO public.moon VALUES (15, 'LALALA', 'Angel dust', 178, 'Asleep', 2);
INSERT INTO public.moon VALUES (16, 'Snacks', 'Juice', 345, 'Ripe', 4);
INSERT INTO public.moon VALUES (17, 'Milkshake', 'Milk cubes', 456, 'Chilled', 5);
INSERT INTO public.moon VALUES (18, 'Mala', 'Mursik', 765, 'Almost ready', 5);
INSERT INTO public.moon VALUES (19, 'Mark the date', 'Revenge', 239, 'Half-baked', 6);
INSERT INTO public.moon VALUES (20, 'Black hearts', 'Human Hate', 156, 'Not there yet', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Beehive', 43.30, 'Wax', true, 1);
INSERT INTO public.planet VALUES (2, 'Fairytale', 34.00, 'Fairy Dust', true, 2);
INSERT INTO public.planet VALUES (3, 'Hearts', 56.98, 'Rave and Roses', true, 3);
INSERT INTO public.planet VALUES (4, 'Salad', 78.34, 'Fruit Peelings', true, 4);
INSERT INTO public.planet VALUES (5, 'Planet Youghurt', 98.76, 'Frozen Yoghurt', true, 5);
INSERT INTO public.planet VALUES (6, 'No humans allowed', 100.75, 'Carbon-dioxide', false, 6);
INSERT INTO public.planet VALUES (7, 'Project Takeover', 500.00, 'Nitrogen', false, 6);
INSERT INTO public.planet VALUES (8, 'Love on the brain', 300.76, 'Broken Hearts', false, 3);
INSERT INTO public.planet VALUES (9, 'Smoothie', 400.56, 'Mocktails', false, 4);
INSERT INTO public.planet VALUES (10, 'Wishes', 200.00, 'Genies in Bottles', false, 2);
INSERT INTO public.planet VALUES (11, 'Maziwa Mala', 456.09, 'Maziwa Mala imetiwa asali kwa umbali', false, 5);
INSERT INTO public.planet VALUES (12, 'QueenBee', 389.00, 'Royal honey', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Ursula', 'Grey', 23, 2500, 1);
INSERT INTO public.star VALUES (2, 'Tinkerbell', 'Green', 45, 2600, 2);
INSERT INTO public.star VALUES (3, 'Cupid', 'Red', 76, 2900, 3);
INSERT INTO public.star VALUES (4, 'Pudding', 'Rainbow', 89, 40000, 4);
INSERT INTO public.star VALUES (5, 'Heaven', 'Brownie', 99, 7800, 5);
INSERT INTO public.star VALUES (6, 'Revenge', 'Black', 67, 50000, 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_size_in_light_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_in_light_years_key UNIQUE (size_in_light_years);


--
-- Name: moon moon_phases_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_phases_key UNIQUE (phases);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_composition_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_composition_key UNIQUE (composition);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_colour_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_colour_key UNIQUE (colour);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

