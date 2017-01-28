DROP TABLE IF EXISTS "application";
CREATE TABLE application (
    id integer NOT NULL,
    class_id integer,
    is_del integer DEFAULT 0
);


--
-- TOC entry 7062 (class 1259 OID 3418768)
-- Name: attribute; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "attribute";
CREATE TABLE attribute (
    id integer NOT NULL,
    type_id integer,
    catalogue_type integer,
    is_del integer DEFAULT 0
);



--
-- TOC entry 7063 (class 1259 OID 3418774)
-- Name: attributes_trans; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "attributes_trans";
CREATE TABLE attributes_trans (
    id integer NOT NULL,
    lang character varying(5) NOT NULL,
    trans character varying(50)
);



--
-- TOC entry 7060 (class 1259 OID 3418741)
-- Name: catalogue; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "catalogue";
CREATE TABLE catalogue (
    id integer NOT NULL,
    type_id integer,
    is_del integer DEFAULT 0
);



--
-- TOC entry 7061 (class 1259 OID 3418747)
-- Name: catalogue_trans; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "catalogue_trans";
CREATE TABLE catalogue_trans (
    id integer NOT NULL,
    lang character varying(5) NOT NULL,
    trans character varying(50)
);



--
-- TOC entry 7058 (class 1259 OID 3418732)
-- Name: catalogue_type; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "catalogue_type";
CREATE TABLE catalogue_type (
    id integer NOT NULL,
    is_del integer DEFAULT 0
);



--
-- TOC entry 7059 (class 1259 OID 3418738)
-- Name: catalogue_type_trans; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "catalogue_type_trans";
CREATE TABLE catalogue_type_trans (
    id integer NOT NULL,
    lang character varying(5) NOT NULL,
    trans character varying(50)
);



--
-- TOC entry 7064 (class 1259 OID 3418777)
-- Name: class; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "class";
CREATE TABLE class (
    id integer NOT NULL,
    is_del integer DEFAULT 0
);



--
-- TOC entry 7066 (class 1259 OID 3418786)
-- Name: class_attribute; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "class_attribute";
CREATE TABLE class_attribute (
    class_id integer,
    attribute_id integer
);



--
-- TOC entry 7065 (class 1259 OID 3418783)
-- Name: class_trans; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "class_trans";
CREATE TABLE class_trans (
    id integer NOT NULL,
    lang character varying(5) NOT NULL,
    trans character varying(50)
);



--
-- TOC entry 7069 (class 1259 OID 3418805)
-- Name: data_catalogue; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "data_catalogue";
CREATE TABLE data_catalogue (
    application_id integer NOT NULL,
    attribute_id integer NOT NULL,
    class_id integer NOT NULL,
    value integer
);



--
-- TOC entry 7068 (class 1259 OID 3418795)
-- Name: data_int; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "data_int";
CREATE TABLE data_int (
    application_id integer NOT NULL,
    attribute_id integer NOT NULL,
    class_id integer NOT NULL,
    value integer
);



--
-- TOC entry 7057 (class 1259 OID 3418727)
-- Name: lang; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "lang";
CREATE TABLE lang (
    lang character varying(5) NOT NULL,
    note character varying(20)
);



--
-- TOC entry 7055 (class 1259 OID 3418710)
-- Name: type; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--

DROP TABLE IF EXISTS "type";
CREATE TABLE type (
    id integer NOT NULL,
    is_del integer DEFAULT 0
);



--
-- TOC entry 7056 (class 1259 OID 3418716)
-- Name: type_trans; Type: TABLE; Schema: ngis; Owner: gauhar; Tablespace:
--
DROP TABLE IF EXISTS "type_trans";
CREATE TABLE type_trans (
    id integer NOT NULL,
    lang character varying(5) NOT NULL,
    trans character varying(50)
);
