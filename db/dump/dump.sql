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

SET search_path = public, pg_catalog;

--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: dev
--



--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dev
--

INSERT INTO users VALUES (2, 'manager@test.test', '$2a$11$OQ3v/cTNK2BxbPiLyvxpd.7qQImkqthX3dQB8WcbxJgyXAuKQPJCG', NULL, 0, NULL, NULL, NULL, NULL, '2017-09-14 00:01:10.773068', '2017-09-14 00:01:10.773068', false, true, 'Менеджер', NULL, NULL);
INSERT INTO users VALUES (3, 'client@test.test', '$2a$11$F0bI0QgYaqug90mkL/wwNehlepTt.2V3ssn9WDATaIzWE.SC7eQRi', NULL, 0, NULL, NULL, NULL, NULL, '2017-09-14 00:01:10.967015', '2017-09-14 00:01:10.967015', false, false, 'Клиент', NULL, NULL);
INSERT INTO users VALUES (1, 'admin@test.test', '$2a$11$a.JJuWQkkroVEai9dcY/ceO/7wDFFFfFeK5W9XaqbkfFdwlmIHqai', NULL, 4, '2017-09-25 17:56:49.956389', '2017-09-24 23:56:12.239147', '176.15.198.60', '176.15.198.60', '2017-09-14 00:01:10.579433', '2017-09-25 17:56:49.958886', true, true, 'Администратор', NULL, NULL);


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
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: dev
--



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
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

