
INSERT INTO application (id, class_id, is_del) VALUES (1, 1, 0);
INSERT INTO application (id, class_id, is_del) VALUES (2, 2, 0);
INSERT INTO application (id, class_id, is_del) VALUES (3, 3, 0);


--
-- TOC entry 27538 (class 0 OID 3418768)
-- Dependencies: 7062
-- Data for Name: attribute; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO attribute (id, type_id, catalogue_type, is_del) VALUES (1, 1, NULL, 0);
INSERT INTO attribute (id, type_id, catalogue_type, is_del) VALUES (2, 4, NULL, 0);
INSERT INTO attribute (id, type_id, catalogue_type, is_del) VALUES (3, 5, NULL, 0);
INSERT INTO attribute (id, type_id, catalogue_type, is_del) VALUES (4, 6, 1, 0);


--
-- TOC entry 27539 (class 0 OID 3418774)
-- Dependencies: 7063
-- Data for Name: attributes_trans; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO attributes_trans (id, lang, trans) VALUES (1, 'ru', 'attribute_ru_1');
INSERT INTO attributes_trans (id, lang, trans) VALUES (2, 'ru', 'attribute_ru_2');
INSERT INTO attributes_trans (id, lang, trans) VALUES (3, 'ru', 'attribute_ru_3');
INSERT INTO attributes_trans (id, lang, trans) VALUES (4, 'ru', 'attribute_ru_4');


--
-- TOC entry 27536 (class 0 OID 3418741)
-- Dependencies: 7060
-- Data for Name: catalogue; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO catalogue (id, type_id, is_del) VALUES (1, 1, 0);
INSERT INTO catalogue (id, type_id, is_del) VALUES (2, 1, 0);
INSERT INTO catalogue (id, type_id, is_del) VALUES (3, 1, 0);


--
-- TOC entry 27537 (class 0 OID 3418747)
-- Dependencies: 7061
-- Data for Name: catalogue_trans; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO catalogue_trans (id, lang, trans) VALUES (1, 'ru', 'obremenenie1');
INSERT INTO catalogue_trans (id, lang, trans) VALUES (2, 'ru', 'obremenenie2');
INSERT INTO catalogue_trans (id, lang, trans) VALUES (3, 'ru', 'obremenenie3');


--
-- TOC entry 27534 (class 0 OID 3418732)
-- Dependencies: 7058
-- Data for Name: catalogue_type; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO catalogue_type (id, is_del) VALUES (1, 0);
INSERT INTO catalogue_type (id, is_del) VALUES (2, 0);
INSERT INTO catalogue_type (id, is_del) VALUES (3, 0);


--
-- TOC entry 27535 (class 0 OID 3418738)
-- Dependencies: 7059
-- Data for Name: catalogue_type_trans; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO catalogue_type_trans (id, lang, trans) VALUES (1, 'ru', 'obremenenie');
INSERT INTO catalogue_type_trans (id, lang, trans) VALUES (2, 'ru', 'srok arendy');
INSERT INTO catalogue_type_trans (id, lang, trans) VALUES (3, 'ru', 'ogranichenie');


--
-- TOC entry 27540 (class 0 OID 3418777)
-- Dependencies: 7064
-- Data for Name: class; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO class (id, is_del) VALUES (1, 0);
INSERT INTO class (id, is_del) VALUES (2, 0);
INSERT INTO class (id, is_del) VALUES (3, 0);


--
-- TOC entry 27542 (class 0 OID 3418786)
-- Dependencies: 7066
-- Data for Name: class_attribute; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO class_attribute (class_id, attribute_id) VALUES (1, 1);
INSERT INTO class_attribute (class_id, attribute_id) VALUES (2, 2);
INSERT INTO class_attribute (class_id, attribute_id) VALUES (3, 3);
INSERT INTO class_attribute (class_id, attribute_id) VALUES (4, 3);


--
-- TOC entry 27541 (class 0 OID 3418783)
-- Dependencies: 7065
-- Data for Name: class_trans; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO class_trans (id, lang, trans) VALUES (1, 'ru', 'usluga1');
INSERT INTO class_trans (id, lang, trans) VALUES (2, 'ru', 'usluga2');
INSERT INTO class_trans (id, lang, trans) VALUES (3, 'ru', 'usluga3');


--
-- TOC entry 27545 (class 0 OID 3418805)
-- Dependencies: 7069
-- Data for Name: data_catalogue; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO data_catalogue (application_id, attribute_id, class_id, value) VALUES (4, 3, 1, NULL);


--
-- TOC entry 27544 (class 0 OID 3418795)
-- Dependencies: 7068
-- Data for Name: data_int; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO data_int (application_id, attribute_id, class_id, value) VALUES (1, 1, 1, 1);
INSERT INTO data_int (application_id, attribute_id, class_id, value) VALUES (2, 2, 2, 2);
INSERT INTO data_int (application_id, attribute_id, class_id, value) VALUES (3, 3, 3, 3);


--
-- TOC entry 27533 (class 0 OID 3418727)
-- Dependencies: 7057
-- Data for Name: lang; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO lang (lang, note) VALUES ('kk', 'Kazahskiy');
INSERT INTO lang (lang, note) VALUES ('ru', 'Russian');
INSERT INTO lang (lang, note) VALUES ('en', 'English');


--
-- TOC entry 27531 (class 0 OID 3418710)
-- Dependencies: 7055
-- Data for Name: type; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO type (id, is_del) VALUES (1, 0);
INSERT INTO type (id, is_del) VALUES (2, 0);
INSERT INTO type (id, is_del) VALUES (3, 0);
INSERT INTO type (id, is_del) VALUES (4, 0);
INSERT INTO type (id, is_del) VALUES (5, 0);
INSERT INTO type (id, is_del) VALUES (6, 0);


--
-- TOC entry 27532 (class 0 OID 3418716)
-- Dependencies: 7056
-- Data for Name: type_trans; Type: TABLE DATA; Schema: ngis; Owner: gauhar
--

INSERT INTO type_trans (id, lang, trans) VALUES (1, 'ru', 'int');
INSERT INTO type_trans (id, lang, trans) VALUES (2, 'ru', 'numeric');
INSERT INTO type_trans (id, lang, trans) VALUES (3, 'ru', 'boolean');
INSERT INTO type_trans (id, lang, trans) VALUES (4, 'ru', 'text');
INSERT INTO type_trans (id, lang, trans) VALUES (5, 'ru', 'date');
INSERT INTO type_trans (id, lang, trans) VALUES (6, 'ru', 'catalogue');

