--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id integer,
    author_type character varying,
    author_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE active_admin_comments OWNER TO dev;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE active_admin_comments_id_seq OWNER TO dev;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: agents; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE agents (
    id integer NOT NULL,
    active boolean DEFAULT false,
    role smallint DEFAULT 0,
    name character varying NOT NULL,
    email character varying,
    phone character varying,
    address character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE agents OWNER TO dev;

--
-- Name: agents_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE agents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE agents_id_seq OWNER TO dev;

--
-- Name: agents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE agents_id_seq OWNED BY agents.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO dev;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE articles (
    id integer NOT NULL,
    published boolean DEFAULT false,
    published_at timestamp without time zone,
    banner character varying,
    header character varying NOT NULL,
    annotation text,
    content text NOT NULL,
    title character varying,
    keywords character varying(80),
    description character varying(80),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE articles OWNER TO dev;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE articles_id_seq OWNER TO dev;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: attestats; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE attestats (
    id integer NOT NULL,
    active boolean DEFAULT false,
    status smallint DEFAULT 0,
    number character varying(32) NOT NULL,
    object text NOT NULL,
    issued_at date,
    closed_at date,
    customer_id integer,
    agent_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE attestats OWNER TO dev;

--
-- Name: attestats_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE attestats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE attestats_id_seq OWNER TO dev;

--
-- Name: attestats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE attestats_id_seq OWNED BY attestats.id;


--
-- Name: certificates; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE certificates (
    id integer NOT NULL,
    active boolean DEFAULT false,
    status smallint DEFAULT 0,
    number character varying(32) NOT NULL,
    object text NOT NULL,
    classifier character varying(32),
    classifier_code character varying(32),
    "grouping" character varying(32),
    issued_at date,
    closed_at date,
    customer_id integer,
    agent_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE certificates OWNER TO dev;

--
-- Name: certificates_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE certificates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE certificates_id_seq OWNER TO dev;

--
-- Name: certificates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE certificates_id_seq OWNED BY certificates.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE customers (
    id integer NOT NULL,
    active boolean DEFAULT false,
    name character varying NOT NULL,
    email character varying,
    phone character varying,
    address character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE customers OWNER TO dev;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_id_seq OWNER TO dev;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: partners; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE partners (
    id integer NOT NULL,
    published boolean DEFAULT false,
    index integer DEFAULT 0,
    logotype character varying,
    name character varying NOT NULL,
    content text,
    phone character varying,
    email character varying,
    address character varying,
    website character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE partners OWNER TO dev;

--
-- Name: partners_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE partners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE partners_id_seq OWNER TO dev;

--
-- Name: partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE partners_id_seq OWNED BY partners.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO dev;

--
-- Name: stages; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE stages (
    id integer NOT NULL,
    operate character varying(2),
    operate_at date NOT NULL,
    operation character varying,
    passed_at date,
    resource_type character varying,
    resource_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE stages OWNER TO dev;

--
-- Name: stages_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE stages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stages_id_seq OWNER TO dev;

--
-- Name: stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE stages_id_seq OWNED BY stages.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_admin boolean DEFAULT false,
    in_staff boolean DEFAULT false,
    name character varying,
    phone character varying,
    address character varying
);


ALTER TABLE users OWNER TO dev;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO dev;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: agents id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY agents ALTER COLUMN id SET DEFAULT nextval('agents_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: attestats id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY attestats ALTER COLUMN id SET DEFAULT nextval('attestats_id_seq'::regclass);


--
-- Name: certificates id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY certificates ALTER COLUMN id SET DEFAULT nextval('certificates_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: partners id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY partners ALTER COLUMN id SET DEFAULT nextval('partners_id_seq'::regclass);


--
-- Name: stages id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY stages ALTER COLUMN id SET DEFAULT nextval('stages_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: agents; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: agents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('agents_id_seq', 1, false);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO ar_internal_metadata VALUES ('environment', 'production', '2017-09-14 00:00:57.353425', '2017-09-14 00:00:57.353425');


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('articles_id_seq', 1, false);


--
-- Data for Name: attestats; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: attestats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('attestats_id_seq', 1, false);


--
-- Data for Name: certificates; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: certificates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('certificates_id_seq', 1, false);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('customers_id_seq', 1, false);


--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('partners_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO schema_migrations VALUES ('20160401000000');
INSERT INTO schema_migrations VALUES ('20160401000001');
INSERT INTO schema_migrations VALUES ('20160401000100');
INSERT INTO schema_migrations VALUES ('20160401000200');
INSERT INTO schema_migrations VALUES ('20160401000300');
INSERT INTO schema_migrations VALUES ('20160401000400');
INSERT INTO schema_migrations VALUES ('20160401000500');
INSERT INTO schema_migrations VALUES ('20160401000600');
INSERT INTO schema_migrations VALUES ('20160401000700');
INSERT INTO schema_migrations VALUES ('20160401000800');


--
-- Data for Name: stages; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('stages_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO users VALUES (2, 'manager@test.test', '$2a$11$OQ3v/cTNK2BxbPiLyvxpd.7qQImkqthX3dQB8WcbxJgyXAuKQPJCG', NULL, 0, NULL, NULL, NULL, NULL, '2017-09-14 00:01:10.773068', '2017-09-14 00:01:10.773068', false, true, 'Менеджер', NULL, NULL);
INSERT INTO users VALUES (3, 'client@test.test', '$2a$11$F0bI0QgYaqug90mkL/wwNehlepTt.2V3ssn9WDATaIzWE.SC7eQRi', NULL, 0, NULL, NULL, NULL, NULL, '2017-09-14 00:01:10.967015', '2017-09-14 00:01:10.967015', false, false, 'Клиент', NULL, NULL);
INSERT INTO users VALUES (1, 'admin@test.test', '$2a$11$a.JJuWQkkroVEai9dcY/ceO/7wDFFFfFeK5W9XaqbkfFdwlmIHqai', NULL, 4, '2017-09-25 17:56:49.956389', '2017-09-24 23:56:12.239147', '176.15.198.60', '176.15.198.60', '2017-09-14 00:01:10.579433', '2017-09-25 17:56:49.958886', true, true, 'Администратор', NULL, NULL);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: agents agents_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: attestats attestats_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY attestats
    ADD CONSTRAINT attestats_pkey PRIMARY KEY (id);


--
-- Name: certificates certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY certificates
    ADD CONSTRAINT certificates_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: partners partners_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stages stages_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY stages
    ADD CONSTRAINT stages_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_agents_on_active; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_agents_on_active ON agents USING btree (active);


--
-- Name: index_agents_on_name; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_agents_on_name ON agents USING btree (name);


--
-- Name: index_agents_on_role; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_agents_on_role ON agents USING btree (role);


--
-- Name: index_agents_on_user_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_agents_on_user_id ON agents USING btree (user_id);


--
-- Name: index_articles_on_header; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_articles_on_header ON articles USING btree (header);


--
-- Name: index_articles_on_published_at; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_articles_on_published_at ON articles USING btree (published_at);


--
-- Name: index_attestats_on_active; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_attestats_on_active ON attestats USING btree (active);


--
-- Name: index_attestats_on_agent_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_attestats_on_agent_id ON attestats USING btree (agent_id);


--
-- Name: index_attestats_on_customer_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_attestats_on_customer_id ON attestats USING btree (customer_id);


--
-- Name: index_attestats_on_number; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_attestats_on_number ON attestats USING btree (number);


--
-- Name: index_attestats_on_status; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_attestats_on_status ON attestats USING btree (status);


--
-- Name: index_certificates_on_active; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_certificates_on_active ON certificates USING btree (active);


--
-- Name: index_certificates_on_agent_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_certificates_on_agent_id ON certificates USING btree (agent_id);


--
-- Name: index_certificates_on_customer_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_certificates_on_customer_id ON certificates USING btree (customer_id);


--
-- Name: index_certificates_on_number; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_certificates_on_number ON certificates USING btree (number);


--
-- Name: index_certificates_on_status; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_certificates_on_status ON certificates USING btree (status);


--
-- Name: index_customers_on_active; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_customers_on_active ON customers USING btree (active);


--
-- Name: index_customers_on_name; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_customers_on_name ON customers USING btree (name);


--
-- Name: index_customers_on_user_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_customers_on_user_id ON customers USING btree (user_id);


--
-- Name: index_partners_on_index; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_partners_on_index ON partners USING btree (index);


--
-- Name: index_partners_on_name; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_partners_on_name ON partners USING btree (name);


--
-- Name: index_partners_on_published; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_partners_on_published ON partners USING btree (published);


--
-- Name: index_stages_on_operate_at; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_stages_on_operate_at ON stages USING btree (operate_at);


--
-- Name: index_stages_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_stages_on_resource_type_and_resource_id ON stages USING btree (resource_type, resource_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_is_admin_and_in_staff; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_users_on_is_admin_and_in_staff ON users USING btree (is_admin, in_staff);


--
-- Name: certificates fk_rails_7a1301a99e; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY certificates
    ADD CONSTRAINT fk_rails_7a1301a99e FOREIGN KEY (agent_id) REFERENCES agents(id) ON DELETE SET NULL;


--
-- Name: attestats fk_rails_8b40c575bf; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY attestats
    ADD CONSTRAINT fk_rails_8b40c575bf FOREIGN KEY (agent_id) REFERENCES agents(id) ON DELETE SET NULL;


--
-- Name: certificates fk_rails_97732e95cb; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY certificates
    ADD CONSTRAINT fk_rails_97732e95cb FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE SET NULL;


--
-- Name: customers fk_rails_9917eeaf5d; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT fk_rails_9917eeaf5d FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;


--
-- Name: attestats fk_rails_b2a20fc47e; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY attestats
    ADD CONSTRAINT fk_rails_b2a20fc47e FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE SET NULL;


--
-- Name: agents fk_rails_ef89880eea; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT fk_rails_ef89880eea FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;


--
-- Name: public; Type: ACL; Schema: -; Owner: dev
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO dev;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

