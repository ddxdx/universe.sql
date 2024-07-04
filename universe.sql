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
    name character varying(60) NOT NULL,
    type text NOT NULL,
    total_stars integer NOT NULL,
    black_hole_present boolean NOT NULL,
    age_in_billions_of_years numeric NOT NULL,
    total_planets integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    total_orbit_length_in_km integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    habitable boolean,
    area_in_sq_km numeric NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    total_moons_orbiting integer NOT NULL,
    age_in_billions_of_years integer NOT NULL,
    habitable boolean,
    area_in_sq_km numeric NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    population integer NOT NULL,
    age_in_years integer NOT NULL,
    extinct boolean,
    habitable_area_in_sq_km numeric NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    total_planets_orbiting integer NOT NULL,
    age_in_billions_of_years integer NOT NULL,
    supernova_possible boolean NOT NULL,
    area_in_sq_km numeric NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'atlas', 'icy', 10024, true, 234, 24589);
INSERT INTO public.galaxy VALUES (2, 'sauran', 'icy', 13647, false, 245, 435432);
INSERT INTO public.galaxy VALUES (3, 'catlas', 'watery', 37832, true, 2345, 323353);
INSERT INTO public.galaxy VALUES (4, 'thamiel', 'light', 343443, false, 234555, 89322894);
INSERT INTO public.galaxy VALUES (5, 'samuel', 'darkness', 3332, true, 333, 33234);
INSERT INTO public.galaxy VALUES (6, 'keter', 'primal', 32332, false, 323, 3222);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 'Ice', 670900, 4500, false, 3060000, 5);
INSERT INTO public.moon VALUES (2, 'Titan', 'Gas', 1221870, 4500, false, 8300000, 6);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Rock', 9377, 4500, false, 1548, 4);
INSERT INTO public.moon VALUES (4, 'Deimos', 'Rock', 23459, 4500, false, 495, 4);
INSERT INTO public.moon VALUES (5, 'Io', 'Volcanic', 422000, 4500, false, 4217000, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Ice', 1070400, 4500, false, 5262000, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Ice', 1882700, 4500, false, 7348000, 5);
INSERT INTO public.moon VALUES (8, 'Triton', 'Ice', 354759, 4500, false, 2300000, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Ice', 238000, 4500, false, 504200, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Rock', 186000, 4500, false, 50500, 6);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Ice', 527000, 4500, false, 764000, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 'Ice', 377000, 4500, false, 671000, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 'Ice', 295000, 4500, false, 700000, 6);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Rock', 265000, 4500, false, 1460000, 3);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Rock', 191000, 4500, false, 1370000, 3);
INSERT INTO public.moon VALUES (16, 'Miranda', 'Rock', 130000, 4500, false, 69500, 3);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Rock', 583000, 4500, false, 3000000, 3);
INSERT INTO public.moon VALUES (18, 'Titania', 'Rock', 436000, 4500, false, 3180000, 3);
INSERT INTO public.moon VALUES (19, 'Charon', 'Ice', 1927000, 4500, false, 4540000, 1);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Ice', 5513400, 4500, false, 1600000, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mars', 'red', 2, 23, false, 34000, 2);
INSERT INTO public.planet VALUES (2, 'venus', 'blue', 11, 12, true, 2345, 2);
INSERT INTO public.planet VALUES (3, 'jupitor', 'gas', 12, 34, false, 322244, 3);
INSERT INTO public.planet VALUES (4, 'asix', 'red', 20, 2003, false, 12000, 3);
INSERT INTO public.planet VALUES (5, 'varius', 'blue', 10, 2, true, 45, 1);
INSERT INTO public.planet VALUES (6, 'janir', 'gas', 102, 304, false, 3244, 1);
INSERT INTO public.planet VALUES (7, 'radis', 'red', 29, 231, false, 36700, 4);
INSERT INTO public.planet VALUES (8, 'habnus', 'blue', 91, 192, true, 6745, 4);
INSERT INTO public.planet VALUES (9, 'ahitor', 'gas', 72, 764, false, 30044, 5);
INSERT INTO public.planet VALUES (10, 'yashi', 'red', 67, 203, false, 39600, 5);
INSERT INTO public.planet VALUES (11, 'zanus', 'blue', 126, 1562, true, 23007845, 6);
INSERT INTO public.planet VALUES (12, 'cabotar', 'gas', 332, 444, false, 23323, 6);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Zaloran', 'Reptilian', 876, 150, false, 230.5, 4);
INSERT INTO public.species VALUES (2, 'Fleeb', 'Avian', 1452, 45, false, 520.3, 2);
INSERT INTO public.species VALUES (3, 'Quern', 'Insectoid', 6300, 12, false, 320.8, 5);
INSERT INTO public.species VALUES (4, 'Garplax', 'Mammalian', 560, 85, false, 280.2, 1);
INSERT INTO public.species VALUES (5, 'Morvent', 'Aquatic', 1200, 70, false, 680.0, 3);
INSERT INTO public.species VALUES (6, 'Sporax', 'Fungal', 3000, 25, false, 150.7, 6);
INSERT INTO public.species VALUES (7, 'Jalaxi', 'Reptilian', 982, 120, false, 210.1, 4);
INSERT INTO public.species VALUES (8, 'Zythor', 'Avian', 745, 38, true, 310.4, 2);
INSERT INTO public.species VALUES (9, 'Xylo', 'Insectoid', 2150, 9, false, 405.6, 5);
INSERT INTO public.species VALUES (10, 'Trigon', 'Mammalian', 890, 60, false, 390.3, 1);
INSERT INTO public.species VALUES (11, 'Vortis', 'Aquatic', 3050, 75, false, 500.0, 3);
INSERT INTO public.species VALUES (12, 'Nylog', 'Fungal', 2700, 33, false, 270.2, 6);
INSERT INTO public.species VALUES (13, 'Kalton', 'Reptilian', 1340, 145, false, 245.9, 4);
INSERT INTO public.species VALUES (14, 'Frig', 'Avian', 1500, 40, true, 530.8, 2);
INSERT INTO public.species VALUES (15, 'Melnar', 'Insectoid', 4120, 18, false, 330.0, 5);
INSERT INTO public.species VALUES (16, 'Bordax', 'Mammalian', 750, 92, false, 390.1, 1);
INSERT INTO public.species VALUES (17, 'Dronix', 'Aquatic', 3100, 80, false, 570.6, 3);
INSERT INTO public.species VALUES (18, 'Lorak', 'Fungal', 2900, 27, false, 280.9, 6);
INSERT INTO public.species VALUES (19, 'Tephron', 'Reptilian', 1275, 165, false, 200.4, 4);
INSERT INTO public.species VALUES (20, 'Hawkis', 'Avian', 1600, 50, false, 490.3, 2);
INSERT INTO public.species VALUES (21, 'Ziglon', 'Insectoid', 5240, 22, false, 310.5, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'api', 'neutron', 7, 89, true, 345, 1);
INSERT INTO public.star VALUES (2, 'sapine', 'neutron', 8, 809, true, 3355, 6);
INSERT INTO public.star VALUES (3, 'istan', 'blue', 1, 999, false, 145, 5);
INSERT INTO public.star VALUES (4, 'xyz', 'deutron', 10, 100, false, 30045, 4);
INSERT INTO public.star VALUES (5, 'krypton', 'neutron', 5, 69, true, 39845, 2);
INSERT INTO public.star VALUES (6, 'sgitaur', 'red', 789, 87659, false, 338445, 3);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_id_prime; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_prime PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: species species_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_id UNIQUE (species_id);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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
-- Name: planet planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: species species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

