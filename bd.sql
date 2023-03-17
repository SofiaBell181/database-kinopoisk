--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-09 15:01:19

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
-- TOC entry 217 (class 1259 OID 24618)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    country character varying(64) NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24699)
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.country ALTER COLUMN country_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.country_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 24598)
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre character varying(28) NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24700)
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.genre ALTER COLUMN genre_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 16400)
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    movie_id integer NOT NULL,
    title_rus character varying(255) NOT NULL,
    "title_eng " character varying(255),
    year integer NOT NULL,
    slogan text NOT NULL,
    budget integer NOT NULL,
    marketing integer,
    description text NOT NULL,
    age integer NOT NULL,
    mpaa character varying(12) NOT NULL,
    duration integer NOT NULL,
    "release_DVD" date NOT NULL,
    rating_kinopoisk real NOT NULL,
    "IMDb" real,
    rus_box_office integer,
    usa_box_office integer,
    worldwide_box_office integer,
    premiere_worldwide date,
    "premiere_RUS" date
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24653)
-- Name: movie_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_country (
    country_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movie_country OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24603)
-- Name: movie_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_genre (
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.movie_genre OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24701)
-- Name: movie_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.movie ALTER COLUMN movie_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movie_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 24679)
-- Name: movie_person_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_person_role (
    person_id integer NOT NULL,
    movie_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.movie_person_role OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24674)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24702)
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.person ALTER COLUMN person_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 24668)
-- Name: person_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_role (
    role_id integer NOT NULL,
    person_role character varying(28) NOT NULL
);


ALTER TABLE public.person_role OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24703)
-- Name: person_role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.person_role ALTER COLUMN role_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_role_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 24638)
-- Name: viewers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.viewers (
    viewers_id integer NOT NULL,
    movie_id integer NOT NULL,
    viewers_count integer NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.viewers OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24704)
-- Name: viewers_viewers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.viewers ALTER COLUMN viewers_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.viewers_viewers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3382 (class 0 OID 24618)
-- Dependencies: 217
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (1, 'Австралия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (2, 'Австрия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (3, 'Албания');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (4, 'Аргентина');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (5, 'Бельгия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (6, 'Болгария');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (7, 'Бразилия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (8, 'Великобритания');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (9, 'Венгрия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (10, 'Венесуэла');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (11, 'Вьетнам');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (12, 'Германия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (13, 'Гонконг');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (14, 'Греция');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (15, 'Грузия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (16, 'Дания');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (17, 'Египет');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (18, 'Израиль');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (19, 'Индия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (20, 'Индонезия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (21, 'Ирландия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (22, 'Исландия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (23, 'Испания');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (24, 'Италия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (25, 'Канада');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (26, 'Китай');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (27, 'Колумбия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (28, 'Корея Южная');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (29, 'Кувейт');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (30, 'Латвия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (31, 'Ливан');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (32, 'Литва');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (33, 'Люксембург');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (34, 'Малайзия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (35, 'Мексика');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (36, 'Нидерланды');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (37, 'Новая Зеландия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (38, 'Норвегия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (39, 'ОАЭ');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (40, 'Перу');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (41, 'Польша');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (42, 'Португалия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (43, 'Россия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (44, 'Румыния');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (45, 'Саудовская Аравия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (46, 'США');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (47, 'Таиланд');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (48, 'Тайвань');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (49, 'Турция');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (50, 'Украина');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (51, 'Уругвай');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (52, 'Филиппины');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (53, 'Финляндия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (54, 'Франция');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (55, 'Хорватия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (56, 'Чехия');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (57, 'Чили');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (58, 'Швейцария');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (59, 'Швеция');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (60, 'Эквадор');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (61, 'Эстония');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (62, 'ЮАР');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (63, 'Япония');
INSERT INTO public.country (country_id, country) OVERRIDING SYSTEM VALUE VALUES (64, 'Словакия');


--
-- TOC entry 3380 (class 0 OID 24598)
-- Dependencies: 215
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (1, 'драма');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (2, 'фэнтези');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (3, 'криминал');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (4, 'детектив');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (5, 'комедия');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (6, 'ужасы');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (7, 'триллеры');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (8, 'мелодрама');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (9, 'боевик');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (10, 'приключения');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (11, 'военный');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (12, 'исторический');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (13, 'документальный');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (14, 'биография');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (15, 'вестерн');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (16, 'спортивный');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (17, 'реальное ТВ');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (18, 'короткометражка');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (19, 'музыкальный');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (20, 'игры');


--
-- TOC entry 3379 (class 0 OID 16400)
-- Dependencies: 214
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movie (movie_id, title_rus, "title_eng ", year, slogan, budget, marketing, description, age, mpaa, duration, "release_DVD", rating_kinopoisk, "IMDb", rus_box_office, usa_box_office, worldwide_box_office, premiere_worldwide, "premiere_RUS") OVERRIDING SYSTEM VALUE VALUES (1, 'Зеленая миля', 'The Green Mile', 1999, 'Пол Эджкомб не верил в чудеса. Пока не столкнулся с одним из них', 60000000, 30000000, 'Пол Эджкомб — начальник блока смертников в тюрьме «Холодная гора», каждый из узников которого однажды проходит «зеленую милю» по пути к месту казни. Пол повидал много заключённых и надзирателей за время работы. Однако гигант Джон Коффи, обвинённый в страшном преступлении, стал одним из самых необычных обитателей блока.', 16, 'R', 189, '2001-02-13', 9.1, 8.6, NULL, 136801374, 286801374, '1999-12-06', '2000-04-18');
INSERT INTO public.movie (movie_id, title_rus, "title_eng ", year, slogan, budget, marketing, description, age, mpaa, duration, "release_DVD", rating_kinopoisk, "IMDb", rus_box_office, usa_box_office, worldwide_box_office, premiere_worldwide, "premiere_RUS") OVERRIDING SYSTEM VALUE VALUES (2, 'Криминальное чтиво', 'Pulp Fiction', 1994, 'Just because you are a character does not mean you have character', 8000000, NULL, 'Двое бандитов Винсент Вега и Джулс Винфилд ведут философские беседы в перерывах между разборками и решением проблем с должниками криминального босса Марселласа Уоллеса. В первой истории Винсент проводит незабываемый вечер с женой Марселласа Мией. Во второй рассказывается о боксёре Бутче Кулидже, купленном Уоллесом, чтобы сдать бой. В третьей истории Винсент и Джулс по нелепой случайности попадают в неприятности.', 18, 'R', 154, '2002-01-31', 8.6, 8.9, 83843, 107928762, 213928762, '1994-05-21', '1995-09-29');
INSERT INTO public.movie (movie_id, title_rus, "title_eng ", year, slogan, budget, marketing, description, age, mpaa, duration, "release_DVD", rating_kinopoisk, "IMDb", rus_box_office, usa_box_office, worldwide_box_office, premiere_worldwide, "premiere_RUS") OVERRIDING SYSTEM VALUE VALUES (3, 'Однажды в… Голливуде', 'Once Upon a Time in... Hollywood', 2019, 'Можно ли переписать историю? Самый ностальгический фильм Тарантино — с Шэрон Тейт, Брюсом Ли и Чарли Мэнсоном', 90000000, NULL, '1969 год, золотой век Голливуда уже закончился. Известный актёр Рик Далтон и его дублер Клифф Бут пытаются найти свое место в стремительно меняющемся мире киноиндустрии.', 18, 'R', 161, '2019-11-25', 7.6, 7.6, 19260721, 142502728, 377426903, '2019-05-21', '2019-08-08');
INSERT INTO public.movie (movie_id, title_rus, "title_eng ", year, slogan, budget, marketing, description, age, mpaa, duration, "release_DVD", rating_kinopoisk, "IMDb", rus_box_office, usa_box_office, worldwide_box_office, premiere_worldwide, "premiere_RUS") OVERRIDING SYSTEM VALUE VALUES (4, 'Одиннадцать друзей Оушена', 'Ocean"s Eleven', 2001, 'Делайте ваши ставки', 85000000, 30000000, 'После выхода из тюрьмы вора Дэнни Оушена не проходит и 24 часов, а он уже планирует организовать самое сложное ограбление казино в истории. Он хочет украсть 160 млн американских долларов из трёх самых преуспевающих казино Лас-Вегаса. Все эти казино принадлежат элегантному и в то же время жестокому дельцу Терри Бенедикту, который только и мечтает о том, как встретится с бывшей женой Дэнни Оушена - Тесс.', 12, 'PG-13', 116, '2002-12-10', 8.1, 7.7, 3200000, 183417150, 450717150, '2001-12-05', '2002-02-28');
INSERT INTO public.movie (movie_id, title_rus, "title_eng ", year, slogan, budget, marketing, description, age, mpaa, duration, "release_DVD", rating_kinopoisk, "IMDb", rus_box_office, usa_box_office, worldwide_box_office, premiere_worldwide, "premiere_RUS") OVERRIDING SYSTEM VALUE VALUES (5, 'Ешь, молись, люби', 'Eat Pray Love', 2010, 'Let Yourself Go This August', 60000000, NULL, 'Замужняя женщина Элизабет Гилберт в один прекрасный день понимает, что живёт совершенно не той жизнью, которой хотела. После болезненного развода она отправляется в путешествие по миру, которое поможет ей открыть новые горизонты и познать себя.', 12, 'PG-13', 134, '2010-11-04', 6.9, 5.8, 4821063, 80574010, 204594016, '2010-08-10', '2010-10-07');


--
-- TOC entry 3384 (class 0 OID 24653)
-- Dependencies: 219
-- Data for Name: movie_country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movie_country (country_id, movie_id) VALUES (46, 1);
INSERT INTO public.movie_country (country_id, movie_id) VALUES (46, 2);
INSERT INTO public.movie_country (country_id, movie_id) VALUES (8, 3);
INSERT INTO public.movie_country (country_id, movie_id) VALUES (26, 3);
INSERT INTO public.movie_country (country_id, movie_id) VALUES (46, 3);
INSERT INTO public.movie_country (country_id, movie_id) VALUES (46, 4);
INSERT INTO public.movie_country (country_id, movie_id) VALUES (46, 5);


--
-- TOC entry 3381 (class 0 OID 24603)
-- Dependencies: 216
-- Data for Name: movie_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (1, 1);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (1, 2);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (1, 3);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (2, 3);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (2, 1);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (3, 1);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (3, 5);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (4, 3);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (4, 7);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (5, 1);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (5, 8);
INSERT INTO public.movie_genre (movie_id, genre_id) VALUES (5, 14);


--
-- TOC entry 3387 (class 0 OID 24679)
-- Dependencies: 222
-- Data for Name: movie_person_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (1, 1, 1);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (1, 1, 2);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (1, 1, 3);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (2, 1, 4);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (3, 1, 5);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (4, 1, 6);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (5, 1, 7);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (6, 2, 1);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (6, 2, 2);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (7, 2, 3);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (8, 2, 4);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (9, 2, 6);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (10, 2, 7);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (11, 1, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (12, 1, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (13, 1, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (14, 1, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (15, 1, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (16, 1, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (17, 1, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (18, 1, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (19, 1, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (20, 1, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (21, 1, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (22, 2, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (23, 2, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (24, 2, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (25, 2, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (26, 2, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (27, 2, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (28, 2, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (29, 2, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (30, 2, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (31, 2, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (32, 2, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (6, 3, 1);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (6, 3, 2);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (33, 3, 3);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (34, 3, 4);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (35, 3, 6);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (36, 3, 7);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (37, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (38, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (39, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (40, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (41, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (42, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (43, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (44, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (45, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (46, 3, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (47, 3, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (48, 3, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (49, 3, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (50, 3, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (51, 4, 1);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (51, 4, 4);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (52, 4, 2);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (53, 4, 3);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (54, 4, 5);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (55, 4, 6);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (56, 4, 7);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (38, 4, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (57, 4, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (58, 4, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (59, 4, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (60, 4, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (61, 4, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (62, 4, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (17, 4, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (63, 4, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (64, 4, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (65, 4, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (66, 4, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (67, 5, 1);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (67, 5, 2);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (68, 5, 3);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (69, 5, 5);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (70, 5, 6);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (71, 5, 7);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (59, 5, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (72, 5, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (73, 5, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (74, 5, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (75, 5, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (76, 5, 8);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (77, 5, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (78, 5, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (79, 5, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (80, 5, 9);
INSERT INTO public.movie_person_role (person_id, movie_id, role_id) VALUES (81, 5, 9);


--
-- TOC entry 3386 (class 0 OID 24674)
-- Dependencies: 221
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (1, 'Фрэнк', ' Дарабонт');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (2, 'Дэвид', 'Тэттерсолл');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (3, 'Томас', 'Ньюман');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (4, 'Теренс', 'Марш');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (5, 'Ричард', 'Фрэнсис-Брюс');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (6, 'Квентин', 'Тарантино');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (7, 'Лоуренс', 'Бендер');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (8, 'Анджей', 'Секула');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (9, 'Дэвид', 'Уоско');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (10, 'Салли', 'Менке');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (11, 'Том', 'Хэнкс');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (12, 'Дэвид', 'Морс');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (13, 'Бонни', 'Хант');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (14, 'Майкл Кларк', 'Дункан');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (15, 'Джеймс', 'Кромуэлл');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (16, 'Майкл', 'Джитер');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (17, 'Всеволод', 'Кузнецов');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (18, 'Владимир', 'Антоник');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (19, 'Любовь', 'Германова');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (20, 'Валентин', 'Голубенко');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (21, 'Александр', 'Белявский');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (22, 'Джон', 'Траволта');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (23, 'Сэмюэл Л.', 'Джексон');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (24, 'Брюс', 'Уиллис');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (25, 'Ума', 'Турман');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (26, 'Винг', 'Реймз');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (27, 'Тим', 'Рот');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (28, 'Артем', 'Веселов');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (29, 'Сергей', 'Козик');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (30, 'Олег', 'Алмазов');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (31, 'Наталия', 'Тарыничева');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (32, 'Максим', 'Сергеев');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (33, 'Джеффри', 'Чан');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (34, 'Роберт', 'Ричардсон');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (35, 'Барбара', 'Линг');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (36, 'Фред', 'Раскин');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (37, 'Леонардо', 'ДиКаприо');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (38, 'Брэд', 'Питт');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (39, 'Марго', 'Робби');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (40, 'Эмиль', 'Хирш');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (41, 'Маргарет', 'Куэлли');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (42, 'Тимоти', 'Олифант');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (43, 'Джулия', 'Баттерз');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (44, 'Остин', 'Батлер');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (45, 'Дакота', 'Фаннинг');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (46, 'Брюс', 'Дерн');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (47, 'Сергей', 'Бурунов');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (48, 'Татьяна', 'Шитова');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (49, 'Диомид', 'Виноградов');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (50, 'Мария', 'Борисова');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (51, 'Стивен', 'Содерберг');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (52, 'Гарри', 'Браун');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (53, 'Брюс', 'Берман');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (54, 'Дэвид', 'Холмс');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (55, 'Филип', 'Мессина');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (56, 'Стивен', 'Миррионе');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (57, 'Джордж', 'Клуни');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (58, 'Мэтт', 'Дэймон');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (59, 'Джулия', 'Робертс');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (60, 'Энди', 'Гарсиа');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (61, 'Кейси', 'Аффлек');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (62, 'Скотт', 'Каан');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (63, 'Владимир', 'Вихров');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (64, 'Борис', 'Шувалов');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (65, 'Марианна', 'Шульц');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (66, 'Алексей', 'Рязанцев');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (67, 'Райан', 'Мерфи');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (68, 'Деде', 'Гарднер');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (69, 'Дарио', 'Марианелли');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (70, 'Билл', 'Грум');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (71, 'Брэдли', 'Букер');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (72, 'Хавьер', 'Бардем');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (73, 'Билли', 'Крудап');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (74, 'Виола', 'Дэвис');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (75, 'Майк', 'О’Мэлли');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (76, 'Джеймс', 'Франко');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (77, 'Наталья', 'Грачёва');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (78, 'Сергей', 'Чонишвили');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (79, 'Алексей', 'Мясников');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (80, 'Ольга', 'Кузнецова');
INSERT INTO public.person (person_id, first_name, last_name) OVERRIDING SYSTEM VALUE VALUES (81, 'Михаил', 'Георгиу');


--
-- TOC entry 3385 (class 0 OID 24668)
-- Dependencies: 220
-- Data for Name: person_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (1, 'режиссер');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (2, 'сценарий');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (3, 'продюсер');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (4, 'оператор');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (5, 'композитор');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (6, 'художник');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (7, 'монтаж');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (8, 'актер');
INSERT INTO public.person_role (role_id, person_role) OVERRIDING SYSTEM VALUE VALUES (9, 'актер дубляжа');


--
-- TOC entry 3383 (class 0 OID 24638)
-- Dependencies: 218
-- Data for Name: viewers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 26000000, 46);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (2, 1, 2100877, 12);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (3, 1, 182000, 14);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (4, 1, 110510, 38);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (5, 1, 32953, 54);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (7, 1, 692551, 23);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (8, 1, 129224, 16);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (9, 1, 31332, 15);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (10, 1, 1714080, 55);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (11, 1, 15281, 22);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (12, 1, 241317, 36);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (13, 1, 1742730, 24);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (14, 1, 75548, 57);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (15, 1, 333784, 50);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (16, 1, 113926, 42);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (17, 1, 96478, 9);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (18, 1, 8994, 62);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (19, 1, 340, 45);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (20, 2, 2022, 64);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (21, 2, 25389700, 46);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (22, 2, 9024, 8);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (23, 2, 2864640, 55);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (24, 2, 1336, 16);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (25, 2, 32501, 24);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (26, 2, 1605546, 12);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (27, 2, 101, 41);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (28, 2, 306826, 60);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (29, 2, 18570, 36);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (30, 2, 2156143, 23);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (31, 2, 6934, 9);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (32, 2, 5234, 42);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (33, 2, 23718, 43);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (34, 2, 869, 62);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (35, 2, 50869, 44);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (36, 3, 389403, 5);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (37, 4, 32400002, 46);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (38, 4, 3331452, 24);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (39, 4, 29899, 22);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (40, 4, 4111739, 12);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (41, 4, 3101897, 23);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (42, 4, 4658089, 54);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (43, 4, 2438408, 7);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (44, 5, 10212169, 46);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (45, 5, 645532, 24);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (46, 5, 679606, 54);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (47, 5, 1436770, 12);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (48, 5, 798361, 8);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (49, 5, 1828465, 7);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (50, 5, 311645, 41);
INSERT INTO public.viewers (viewers_id, movie_id, viewers_count, country_id) OVERRIDING SYSTEM VALUE VALUES (6, 1, 132085, 62);


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 223
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_country_id_seq', 1, false);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 224
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 225
-- Name: movie_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_movie_id_seq', 1, false);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 226
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_person_id_seq', 1, false);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 227
-- Name: person_role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_role_role_id_seq', 1, false);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 228
-- Name: viewers_viewers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.viewers_viewers_id_seq', 1, false);


--
-- TOC entry 3217 (class 2606 OID 24622)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- TOC entry 3213 (class 2606 OID 24602)
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 3221 (class 2606 OID 24657)
-- Name: movie_country movie_country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_country
    ADD CONSTRAINT movie_country_pkey PRIMARY KEY (movie_id, country_id);


--
-- TOC entry 3215 (class 2606 OID 24607)
-- Name: movie_genre movie_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT movie_genre_pkey PRIMARY KEY (movie_id, genre_id);


--
-- TOC entry 3227 (class 2606 OID 24683)
-- Name: movie_person_role movie_person_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_person_role
    ADD CONSTRAINT movie_person_role_pkey PRIMARY KEY (person_id, movie_id, role_id);


--
-- TOC entry 3225 (class 2606 OID 24678)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- TOC entry 3223 (class 2606 OID 24672)
-- Name: person_role person_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_role
    ADD CONSTRAINT person_role_pkey PRIMARY KEY (role_id);


--
-- TOC entry 3211 (class 2606 OID 16406)
-- Name: movie pk_movie_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT pk_movie_id PRIMARY KEY (movie_id);


--
-- TOC entry 3219 (class 2606 OID 24642)
-- Name: viewers viewers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viewers
    ADD CONSTRAINT viewers_pkey PRIMARY KEY (viewers_id);


--
-- TOC entry 3232 (class 2606 OID 24658)
-- Name: movie_country movie_country_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_country
    ADD CONSTRAINT movie_country_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(country_id);


--
-- TOC entry 3233 (class 2606 OID 24663)
-- Name: movie_country movie_country_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_country
    ADD CONSTRAINT movie_country_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- TOC entry 3228 (class 2606 OID 24613)
-- Name: movie_genre movie_genre_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT movie_genre_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id);


--
-- TOC entry 3229 (class 2606 OID 24608)
-- Name: movie_genre movie_genre_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT movie_genre_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- TOC entry 3234 (class 2606 OID 24689)
-- Name: movie_person_role movie_person_role_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_person_role
    ADD CONSTRAINT movie_person_role_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- TOC entry 3235 (class 2606 OID 24684)
-- Name: movie_person_role movie_person_role_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_person_role
    ADD CONSTRAINT movie_person_role_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- TOC entry 3236 (class 2606 OID 24694)
-- Name: movie_person_role movie_person_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_person_role
    ADD CONSTRAINT movie_person_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.person_role(role_id);


--
-- TOC entry 3230 (class 2606 OID 24648)
-- Name: viewers viewers_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viewers
    ADD CONSTRAINT viewers_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(country_id);


--
-- TOC entry 3231 (class 2606 OID 24643)
-- Name: viewers viewers_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viewers
    ADD CONSTRAINT viewers_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


-- Completed on 2023-03-09 15:01:19

--
-- PostgreSQL database dump complete
--

