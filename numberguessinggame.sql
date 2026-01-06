--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 15, 1);
INSERT INTO public.games VALUES (2, 910, 2);
INSERT INTO public.games VALUES (3, 865, 2);
INSERT INTO public.games VALUES (4, 896, 3);
INSERT INTO public.games VALUES (5, 975, 3);
INSERT INTO public.games VALUES (6, 108, 2);
INSERT INTO public.games VALUES (7, 295, 2);
INSERT INTO public.games VALUES (8, 852, 2);
INSERT INTO public.games VALUES (9, 964, 4);
INSERT INTO public.games VALUES (10, 196, 4);
INSERT INTO public.games VALUES (11, 576, 5);
INSERT INTO public.games VALUES (12, 910, 5);
INSERT INTO public.games VALUES (13, 355, 4);
INSERT INTO public.games VALUES (14, 247, 4);
INSERT INTO public.games VALUES (15, 634, 4);
INSERT INTO public.games VALUES (16, 297, 6);
INSERT INTO public.games VALUES (17, 571, 6);
INSERT INTO public.games VALUES (18, 727, 7);
INSERT INTO public.games VALUES (19, 957, 7);
INSERT INTO public.games VALUES (20, 175, 6);
INSERT INTO public.games VALUES (21, 640, 6);
INSERT INTO public.games VALUES (22, 77, 6);
INSERT INTO public.games VALUES (23, 971, 8);
INSERT INTO public.games VALUES (24, 357, 8);
INSERT INTO public.games VALUES (25, 183, 9);
INSERT INTO public.games VALUES (26, 280, 9);
INSERT INTO public.games VALUES (27, 130, 8);
INSERT INTO public.games VALUES (28, 253, 8);
INSERT INTO public.games VALUES (29, 987, 8);
INSERT INTO public.games VALUES (30, 782, 10);
INSERT INTO public.games VALUES (31, 460, 10);
INSERT INTO public.games VALUES (32, 226, 11);
INSERT INTO public.games VALUES (33, 400, 11);
INSERT INTO public.games VALUES (34, 939, 10);
INSERT INTO public.games VALUES (35, 420, 10);
INSERT INTO public.games VALUES (36, 408, 10);
INSERT INTO public.games VALUES (37, 145, 12);
INSERT INTO public.games VALUES (38, 258, 12);
INSERT INTO public.games VALUES (39, 638, 13);
INSERT INTO public.games VALUES (40, 227, 13);
INSERT INTO public.games VALUES (41, 632, 12);
INSERT INTO public.games VALUES (42, 251, 12);
INSERT INTO public.games VALUES (43, 86, 12);
INSERT INTO public.games VALUES (44, 493, 14);
INSERT INTO public.games VALUES (45, 773, 14);
INSERT INTO public.games VALUES (46, 209, 15);
INSERT INTO public.games VALUES (47, 129, 15);
INSERT INTO public.games VALUES (48, 823, 14);
INSERT INTO public.games VALUES (49, 419, 14);
INSERT INTO public.games VALUES (50, 74, 14);
INSERT INTO public.games VALUES (51, 16, 1);
INSERT INTO public.games VALUES (52, 707, 16);
INSERT INTO public.games VALUES (53, 640, 16);
INSERT INTO public.games VALUES (54, 392, 17);
INSERT INTO public.games VALUES (55, 105, 17);
INSERT INTO public.games VALUES (56, 937, 16);
INSERT INTO public.games VALUES (57, 837, 16);
INSERT INTO public.games VALUES (58, 151, 16);
INSERT INTO public.games VALUES (59, 176, 18);
INSERT INTO public.games VALUES (60, 567, 18);
INSERT INTO public.games VALUES (61, 876, 19);
INSERT INTO public.games VALUES (62, 169, 19);
INSERT INTO public.games VALUES (63, 675, 18);
INSERT INTO public.games VALUES (64, 466, 18);
INSERT INTO public.games VALUES (65, 49, 18);
INSERT INTO public.games VALUES (66, 206, 20);
INSERT INTO public.games VALUES (67, 386, 20);
INSERT INTO public.games VALUES (68, 802, 21);
INSERT INTO public.games VALUES (69, 955, 21);
INSERT INTO public.games VALUES (70, 163, 20);
INSERT INTO public.games VALUES (71, 150, 20);
INSERT INTO public.games VALUES (72, 342, 20);
INSERT INTO public.games VALUES (73, 262, 22);
INSERT INTO public.games VALUES (74, 286, 22);
INSERT INTO public.games VALUES (75, 574, 23);
INSERT INTO public.games VALUES (76, 514, 23);
INSERT INTO public.games VALUES (77, 896, 22);
INSERT INTO public.games VALUES (78, 590, 22);
INSERT INTO public.games VALUES (79, 66, 22);
INSERT INTO public.games VALUES (80, 57, 24);
INSERT INTO public.games VALUES (81, 790, 24);
INSERT INTO public.games VALUES (82, 394, 25);
INSERT INTO public.games VALUES (83, 50, 25);
INSERT INTO public.games VALUES (84, 984, 24);
INSERT INTO public.games VALUES (85, 778, 24);
INSERT INTO public.games VALUES (86, 323, 24);
INSERT INTO public.games VALUES (87, 101, 26);
INSERT INTO public.games VALUES (88, 383, 26);
INSERT INTO public.games VALUES (89, 457, 27);
INSERT INTO public.games VALUES (90, 914, 27);
INSERT INTO public.games VALUES (91, 626, 26);
INSERT INTO public.games VALUES (92, 337, 26);
INSERT INTO public.games VALUES (93, 456, 26);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Kat');
INSERT INTO public.users VALUES (2, 'user_1767678648473');
INSERT INTO public.users VALUES (3, 'user_1767678648472');
INSERT INTO public.users VALUES (4, 'user_1767678666050');
INSERT INTO public.users VALUES (5, 'user_1767678666049');
INSERT INTO public.users VALUES (6, 'user_1767678675369');
INSERT INTO public.users VALUES (7, 'user_1767678675368');
INSERT INTO public.users VALUES (8, 'user_1767678953805');
INSERT INTO public.users VALUES (9, 'user_1767678953804');
INSERT INTO public.users VALUES (10, 'user_1767679214283');
INSERT INTO public.users VALUES (11, 'user_1767679214282');
INSERT INTO public.users VALUES (12, 'user_1767679226877');
INSERT INTO public.users VALUES (13, 'user_1767679226876');
INSERT INTO public.users VALUES (14, 'user_1767679273753');
INSERT INTO public.users VALUES (15, 'user_1767679273752');
INSERT INTO public.users VALUES (16, 'user_1767679337885');
INSERT INTO public.users VALUES (17, 'user_1767679337884');
INSERT INTO public.users VALUES (18, 'user_1767679367006');
INSERT INTO public.users VALUES (19, 'user_1767679367005');
INSERT INTO public.users VALUES (20, 'user_1767679420353');
INSERT INTO public.users VALUES (21, 'user_1767679420352');
INSERT INTO public.users VALUES (22, 'user_1767679499564');
INSERT INTO public.users VALUES (23, 'user_1767679499563');
INSERT INTO public.users VALUES (24, 'user_1767679535313');
INSERT INTO public.users VALUES (25, 'user_1767679535312');
INSERT INTO public.users VALUES (26, 'user_1767679592241');
INSERT INTO public.users VALUES (27, 'user_1767679592240');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 93, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

