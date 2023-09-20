//album
CREATE TABLE IF NOT EXISTS album
(
    album_id character varying(50) ,
    title character varying(120) ,
    artist_id character varying(30) ,
    CONSTRAINT album_pkey PRIMARY KEY (album_id)
)
//artist
CREATE TABLE IF NOT EXISTS artist
(
    artist_id character varying(50) ,
    name character varying(120) ,
    CONSTRAINT artist_pkey PRIMARY KEY (artist_id)
)
//customer
CREATE TABLE IF NOT EXISTS customer
(
    customer_id integer NOT NULL,
    first_name character(50) ,
    last_name character(50) ,
    company character varying(120) ,
    address character varying(120) ,
    city character varying(50) ,
    state character varying(50) ,
    country character varying(50) ,
    postal_code character varying(50) ,
    phone character varying(50),
    fax character varying(50) ,
    email character varying(50) ,
    support_rep_id integer,
    CONSTRAINT customer_pkey PRIMARY KEY (customer_id)
)
//employee
CREATE TABLE IF NOT EXISTS employee
(
    employee_id character varying(50) ,
    last_name character(50) ,
    first_name character(50) ,
    title character varying(50) ,
    reports_to character varying(30) ,
    levels character varying(10) ,
    birthdate timestamp ,
    hire_date timestamp ,
    address character varying(120) ,
    city character varying(50) ,
    state character varying(50) ,
    country character varying(30),
    postal_code character varying(30) ,
    phone character varying(30) ,
    fax character varying(30) ,
    email character varying(30) ,
    CONSTRAINT employee2_pkey PRIMARY KEY (employee_id)
)
//genre
CREATE TABLE IF NOT EXISTS genre
(
    genre_id character varying(50) ,
    name character varying(120) ,
    CONSTRAINT genre_pkey PRIMARY KEY (genre_id)
)
//invoice
CREATE TABLE IF NOT EXISTS invoice
(
    invoice_id integer NOT NULL,
    customer_id integer,
    invoice_date timestamp without time zone,
    billing_address character varying(120) ,
    billing_city character varying(30) ,
    billing_state character varying(30) ,
    billing_country character varying(30) ,
    billing_postal character varying(30) ,
    total double precision,
    CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id)
)
//invoice_line
CREATE TABLE IF NOT EXISTS invoice_line
(
    invoice_line_id character varying(50) ,
    invoice_id integer,
    track_id integer,
    unit_price double precision,
    quantity double precision,
    CONSTRAINT invoice_line_pkey PRIMARY KEY (invoice_line_id)
)
//media_type
CREATE TABLE IF NOT EXISTS media_type
(
    media_type_id character varying(50) ,
    name character varying(120) ,
    CONSTRAINT media_type_pkey PRIMARY KEY (media_type_id)
)
//playlist
CREATE TABLE IF NOT EXISTS playlist
(
    playlist_id character varying(50) ,
    name character varying(120) ,
    CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id)
)
//playlist_track
CREATE TABLE IF NOT EXISTS playlist_track
(
    playlist_id character varying(50) ,
    track_id integer
)
//track
CREATE TABLE IF NOT EXISTS track
(
    track_id integer NOT NULL,
    name character varying(150) ,
    album_id character varying(50) ,
    media_type_id character varying(50) ,
    genre_id character varying(50) ,
    composer character varying(190) ,
    milliseconds integer,
    bytes integer,
    unit_price double precision,
    CONSTRAINT track_pkey PRIMARY KEY (track_id)
)
