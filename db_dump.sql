Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO guillermo_villareal;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO guillermo_villareal;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO guillermo_villareal;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO guillermo_villareal;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO guillermo_villareal;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO guillermo_villareal;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO guillermo_villareal;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO guillermo_villareal;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO guillermo_villareal;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO guillermo_villareal;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO guillermo_villareal;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO guillermo_villareal;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO guillermo_villareal;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO guillermo_villareal;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO guillermo_villareal;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO guillermo_villareal;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO guillermo_villareal;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO guillermo_villareal;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO guillermo_villareal;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO guillermo_villareal;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO guillermo_villareal;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: guillermo_villareal
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO guillermo_villareal;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: guillermo_villareal
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO guillermo_villareal;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guillermo_villareal
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add blacklisted token	10	add_blacklistedtoken
38	Can change blacklisted token	10	change_blacklistedtoken
39	Can delete blacklisted token	10	delete_blacklistedtoken
40	Can view blacklisted token	10	view_blacklistedtoken
41	Can add outstanding token	11	add_outstandingtoken
42	Can change outstanding token	11	change_outstandingtoken
43	Can delete outstanding token	11	delete_outstandingtoken
44	Can view outstanding token	11	view_outstandingtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$99RV5HRjGm8mUuJIXk1Zhy$kDu/I6g2ZIc04CiNyZm5Dv0NU0umGhh72A0hMrLxkpQ=	\N	t	memowars				t	t	2022-04-12 19:28:31.814316+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	token_blacklist	blacklistedtoken
11	token_blacklist	outstandingtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 19:14:52.12659+00
2	auth	0001_initial	2022-04-12 19:14:52.193346+00
3	admin	0001_initial	2022-04-12 19:14:52.21261+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 19:14:52.218648+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 19:14:52.224916+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 19:14:52.238971+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 19:14:52.245493+00
8	auth	0003_alter_user_email_max_length	2022-04-12 19:14:52.252702+00
9	auth	0004_alter_user_username_opts	2022-04-12 19:14:52.258646+00
10	auth	0005_alter_user_last_login_null	2022-04-12 19:14:52.26448+00
11	auth	0006_require_contenttypes_0002	2022-04-12 19:14:52.266007+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 19:14:52.271692+00
13	auth	0008_alter_user_username_max_length	2022-04-12 19:14:52.281834+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 19:14:52.287995+00
15	auth	0010_alter_group_name_max_length	2022-04-12 19:14:52.304461+00
16	auth	0011_update_proxy_permissions	2022-04-12 19:14:52.312858+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 19:14:52.3188+00
18	sessions	0001_initial	2022-04-12 19:14:52.331093+00
19	token_blacklist	0001_initial	2022-04-12 19:25:33.841446+00
20	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 19:25:33.848867+00
21	token_blacklist	0003_auto_20171017_2007	2022-04-12 19:25:33.858277+00
22	token_blacklist	0004_auto_20171017_2013	2022-04-12 19:25:33.870428+00
23	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 19:25:33.878282+00
24	token_blacklist	0006_auto_20171017_2113	2022-04-12 19:25:33.884828+00
25	token_blacklist	0007_auto_20171017_2214	2022-04-12 19:25:33.905649+00
26	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 19:25:33.945096+00
27	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 19:25:33.958642+00
28	token_blacklist	0011_linearizes_history	2022-04-12 19:25:33.960344+00
29	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 19:25:33.966921+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: guillermo_villareal
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3ODEyOSwiaWF0IjoxNjQ5NzkxNzI5LCJqdGkiOiJlZGFjNGFkMDliMGQ0MWNjYmRiMGEzYmNjYTRmNDdkYyIsInVzZXJfaWQiOjF9.1CQSl0xKRDKh1LVgvJaQ05DZQu7GopkGr9786SbNbpM	2022-04-12 19:28:49.457564+00	2022-04-13 19:28:49+00	1	edac4ad09b0d41ccbdb0a3bcca4f47dc
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDczNCwiaWF0IjoxNjQ5ODA0MzM0LCJqdGkiOiJhYmQ2MTZkYjQ0MjM0NjhlYjgyMmJmNTM0YjFlMGU4NCIsInVzZXJfaWQiOjF9.K4GeDyeY6fU4MLShehSO-5CKICvHJ712JSduGsGopSo	2022-04-12 22:58:54.909415+00	2022-04-13 22:58:54+00	1	abd616db4423468eb822bf534b1e0e84
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDc1NSwiaWF0IjoxNjQ5ODA0MzU1LCJqdGkiOiI1YTc0YThlYTQ2OTI0OTg0YTgzMzg0OTIwMGU2ZGU2MiIsInVzZXJfaWQiOjF9.SVKaHTdyQOeOaornMmP5ZAtfn7xPGOLtg75Vd5j_XeA	2022-04-12 22:59:15.371668+00	2022-04-13 22:59:15+00	1	5a74a8ea46924984a833849200e6de62
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDc3MCwiaWF0IjoxNjQ5ODA0MzcwLCJqdGkiOiJkMzZkMzQ5ZGFiYmI0M2M1Yjg4N2M4Y2Y1OThjOTlhMCIsInVzZXJfaWQiOjF9.zij5VjL0bePx3YIXr3j-eb0nxnrPgpSm6Thb_e0g7n0	2022-04-12 22:59:30.498068+00	2022-04-13 22:59:30+00	1	d36d349dabbb43c5b887c8cf598c99a0
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTMyMCwiaWF0IjoxNjQ5ODE4OTIwLCJqdGkiOiJkNzkyODBmM2EzMTY0ZDNmYWY5ZWEyYTVjODQwNDVjNiIsInVzZXJfaWQiOjF9.2NTrDx4T7csEpKr2UYKYz2cNfjUf6-2Guyl2Dbni97c	2022-04-13 03:02:00.844035+00	2022-04-14 03:02:00+00	1	d79280f3a3164d3faf9ea2a5c84045c6
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTA1MCwiaWF0IjoxNjQ5ODYyNjUwLCJqdGkiOiJmYWQzOGQzZjY1MGE0ZGE1YmQwOGQ0OTI4MTI3MzM3MiIsInVzZXJfaWQiOjF9.4sndeVx_1aV-hmKHEf9xrMeSVfqjs9KEpIbBLTsxglI	2022-04-13 15:10:50.122809+00	2022-04-14 15:10:50+00	1	fad38d3f650a4da5bd08d49281273372
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTA1MSwiaWF0IjoxNjQ5ODYyNjUxLCJqdGkiOiI4NTFjYzc1NTk5YTI0NWI1ODZjMjMyYjk4ZDIzMGY5ZCIsInVzZXJfaWQiOjF9.kZaQORugCEKD4IoTzyNnIyKSaY8xd3nxQVv5i32CaEw	2022-04-13 15:10:51.591318+00	2022-04-14 15:10:51+00	1	851cc75599a245b586c232b98d230f9d
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guillermo_villareal
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 7, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: guillermo_villareal
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: guillermo_villareal
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

