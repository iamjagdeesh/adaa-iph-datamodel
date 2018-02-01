SET TIME ZONE '+00:00';

--
-- Table structure for table pillars
--

CREATE TYPE display_type AS ENUM (
	'rank',
	'score',
	'percentage',
	'number',
	'currency'
) ;

CREATE TYPE desired_value AS ENUM (
	'high',
	'low'
) ;

CREATE TABLE pillars (
  id int NOT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL,
  additional_notes_en text NOT NULL,
  additional_notes_ar text NOT NULL,
  denominator_en text NOT NULL,
  denominator_ar text NOT NULL,
  description_long_en text NOT NULL,
  description_long_ar text NOT NULL,
  quantifier_en text NOT NULL,
  quantifier_ar text NOT NULL,
  display_type display_type NOT NULL DEFAULT 'number',
  red_flag smallint NOT NULL,
  icon varchar(255) NOT NULL,
  "order" int NOT NULL,
  color varchar(255) NOT NULL,
  desired_value desired_value NOT NULL DEFAULT 'high',
  last_calculated_at timestamp NOT NULL ,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL ,
  css_class varchar(255) NOT NULL,
  value_type_id int NOT NULL
) ;

-- --------------------------------------------------------
--
-- Table structure for table topics
--

CREATE TABLE topics (
  id int NOT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL 
) ;

-- --------------------------------------------------------

--
-- Table structure for table subtopics
--

CREATE TABLE subtopics (
  id int NOT NULL,
  pillar_id int DEFAULT NULL,
  topic_id int NOT NULL,
  weight decimal(10,5) DEFAULT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL,
  additional_notes_en text NOT NULL,
  additional_notes_ar text NOT NULL,
  denominator_en text NOT NULL,
  denominator_ar text NOT NULL,
  description_long_en text NOT NULL,
  description_long_ar text NOT NULL,
  description_short_en text NOT NULL,
  description_short_ar text NOT NULL,
  quantifier_en text NOT NULL,
  quantifier_ar text NOT NULL,
  red_flag smallint NOT NULL,
  icon varchar(255) NOT NULL,
  "order" int NOT NULL,
  color varchar(255) NOT NULL,
  display_type display_type NOT NULL DEFAULT 'number',
  desired_value desired_value NOT NULL DEFAULT 'high',
  last_calculated_at timestamp NOT NULL ,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL ,
  value_type_id int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table sources
--

CREATE TABLE sources (
  id int NOT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL 
) ;

-- --------------------------------------------------------

--
-- Table structure for table kpis
--

CREATE TABLE kpis (
  id int NOT NULL,
  subtopic_id int DEFAULT NULL,
  weight decimal(10,5) DEFAULT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL,
  additional_notes_ar text NOT NULL,
  additional_notes_en text NOT NULL,
  denominator_en varchar(255) NOT NULL,
  denominator_ar varchar(255) NOT NULL,
  description_long_en text NOT NULL,
  description_long_ar text NOT NULL,
  desired_value desired_value NOT NULL DEFAULT 'high',
  red_flag smallint NOT NULL,
  visible smallint NOT NULL,
  "order" int NOT NULL,
  icon varchar(255) NOT NULL,
  color varchar(255) NOT NULL,
  quantifier_ar varchar(255) NOT NULL,
  quantifier_en varchar(255) NOT NULL,
  url varchar(255) NOT NULL,
  last_calculated_at timestamp NOT NULL ,
  display_type display_type NOT NULL DEFAULT 'number',
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL ,
  api_code varchar(255) NOT NULL,
  is_calculated_kpi int NOT NULL DEFAULT '0',
  input_divisor smallint NOT NULL DEFAULT '1',
  input_multiplier smallint NOT NULL DEFAULT '1',
  can_be_extrapolated smallint NOT NULL,
  original_ios_id varchar(255) NOT NULL,
  source_id int NOT NULL,
  is_data_source smallint NOT NULL DEFAULT '0',
  frequent_updated smallint DEFAULT NULL,
  saudi_only smallint NOT NULL,
  value_type_id int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table kpi_results
--

CREATE TABLE kpi_results (
  id int NOT NULL,
  kpi_id int NOT NULL,
  country_id varchar(255) NOT NULL,
  year int NOT NULL,
  data double precision DEFAULT NULL,
  score double precision DEFAULT NULL,
  weighted_score double precision DEFAULT NULL,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL ,
  deleted_at timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table lite_comparisons
--

CREATE TABLE lite_comparisons (
  id int NOT NULL,
  comparisonable_id varchar(255) NOT NULL,
  comparisonable_type varchar(100) NOT NULL,
  group_id int NOT NULL,
  group_uid varchar(255) NOT NULL,
  country_id varchar(255) NOT NULL,
  country_en varchar(255) NOT NULL,
  country_ar varchar(255) NOT NULL,
  value double precision DEFAULT NULL,
  score double precision DEFAULT NULL,
  formatted_score varchar(255) DEFAULT '',
  formatted_value varchar(255) DEFAULT '',
  year int NOT NULL,
  position int NOT NULL,
  ordinal_suffix varchar(255) NOT NULL,
  subtopic_id int DEFAULT NULL,
  formatted_data varchar(255) DEFAULT NULL,
  weighted_score double precision DEFAULT NULL,
  data double precision DEFAULT NULL,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL 
) ;

--
-- Table structure for table currencies
--

CREATE TABLE currencies (
  id int NOT NULL,
  code varchar(255) NOT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL
) ;

-- --------------------------------------------------------

-- --------------------------------------------------------
--
-- Table structure for table countries
--

CREATE TABLE countries (
  id varchar(255) NOT NULL,
  short_name varchar(255) NOT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL,
  icon varchar(255) NOT NULL,
  currency_id int NOT NULL,
  alpha_3 varchar(255) NOT NULL,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL ,
  is_calculated smallint NOT NULL,
  is_wri smallint NOT NULL,
  latitude double precision DEFAULT NULL,
  longitude double precision DEFAULT NULL
) ;

-- --------------------------------------------------------
--
-- Table structure for table country_country_group
--

CREATE TABLE country_country_group (
  id int NOT NULL,
  country_id varchar(255) NOT NULL,
  country_group_id int NOT NULL,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL 
) ;

-- --------------------------------------------------------
--
-- Table structure for table country_groups
--

CREATE TABLE country_groups (
  id int NOT NULL,
  uid varchar(255) NOT NULL,
  name_en varchar(255) NOT NULL,
  name_ar varchar(255) NOT NULL,
  bad int NOT NULL,
  to_improve int NOT NULL,
  good int NOT NULL,
  created_at timestamp NOT NULL ,
  updated_at timestamp NOT NULL 
) ;

-- --------------------------------------------------------
--
-- Table structure for table kpi_score_normalized
--

CREATE TABLE kpi_score_normalized (
	id int NOT NULL,
	kpi_id int NOT NULL,
	group_uid varchar(255) NOT NULL,
	group_id int NOT NULL,
	country_id varchar(255) NOT NULL,
	year int NOT NULL,
	rank int,
	color_rank_normalized double precision DEFAULT NULL,
	data double precision DEFAULT NULL,
	data_formatted varchar(255) DEFAULT NULL,
	created_at timestamp,
	updated_at timestamp NOT NULL 
);


--
-- Indexes for table currencies
--
ALTER TABLE currencies
  ADD PRIMARY KEY (id);

--
-- Indexes for table countries
--
ALTER TABLE countries
  ADD PRIMARY KEY (id);
CREATE INDEX countries_currency_id_index ON countries (currency_id);

--
-- Indexes for table country_country_group
--
ALTER TABLE country_country_group
  ADD PRIMARY KEY (id);
CREATE INDEX country_country_group_country_id_index ON country_country_group (country_id);
CREATE INDEX country_country_group_country_group_id_index ON country_country_group (country_group_id);

--
-- Indexes for table country_groups
--
ALTER TABLE country_groups
  ADD PRIMARY KEY (id);

--
-- Indexes for table sources
--
ALTER TABLE sources
  ADD PRIMARY KEY (id);  
  
--
-- Indexes for table kpis
--
ALTER TABLE kpis
  ADD PRIMARY KEY (id);
CREATE INDEX kpis_subtopic_id_index ON kpis (subtopic_id);
CREATE INDEX kpis_source_id_index ON kpis (source_id);
  
--
-- Indexes for table kpi_results
--
ALTER TABLE kpi_results
  ADD PRIMARY KEY (id);
CREATE UNIQUE INDEX kpi_results_kpi_id_country_id_year_unique ON kpi_results (kpi_id,country_id,year);
CREATE INDEX kpi_results_kpi_id_index ON kpi_results (kpi_id);
CREATE INDEX kpi_results_country_id_index ON kpi_results (country_id);

--
-- Indexes for table pillars
--
ALTER TABLE pillars
  ADD PRIMARY KEY (id);
  
--
-- Indexes for table subtopics
--
ALTER TABLE subtopics
  ADD PRIMARY KEY (id);
CREATE INDEX subtopics_pillar_id_index ON subtopics (pillar_id);
CREATE INDEX subtopics_topic_id_index ON subtopics (topic_id);

--
-- Indexes for table topics
--
ALTER TABLE topics
  ADD PRIMARY KEY (id);
  
--
-- Indexes for table lite_comparisons
--
ALTER TABLE lite_comparisons
  ADD PRIMARY KEY (id);
CREATE INDEX lite_comparisons_group_id_index ON lite_comparisons (group_id);
CREATE INDEX lite_comparisons_comparisonable_id_index ON lite_comparisons (comparisonable_id);
CREATE INDEX lite_comparisons_comparisonable_type_index ON lite_comparisons (comparisonable_type);

--
-- Indexes for table kpi_score_normalized
--
ALTER TABLE kpi_score_normalized
  ADD PRIMARY KEY (id);
CREATE INDEX kpi_score_normalized_kpi_id_index ON kpi_score_normalized (kpi_id);
CREATE INDEX kpi_score_normalized_country_id_index ON kpi_score_normalized  (country_id);
CREATE INDEX kpi_score_normalized_group_id_index ON kpi_score_normalized  (group_id);
CREATE INDEX kpi_score_normalized_year_index ON kpi_score_normalized  (year);
CREATE INDEX kpi_score_normalized_kpi_id_country_id_year_index ON kpi_score_normalized (kpi_id,country_id,year);



--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table currencies
--
create sequence cur_seq;
alter table currencies alter id set default nextval('cur_seq');
Select setval('cur_seq', 168 ); 

--
-- AUTO_INCREMENT for table country_groups
--
create sequence cg_seq;
alter table country_groups alter id set default nextval('cg_seq');
Select setval('cg_seq', 5 );

--
-- AUTO_INCREMENT for table countrycountry_group
--
create sequence ccg_seq;
alter table country_country_group alter id set default nextval('ccg_seq');
Select setval('ccg_seq', 1 );

--
-- AUTO_INCREMENT for table sources
--
create sequence sou_seq;
alter table sources alter id set default nextval('sou_seq');
Select setval('sou_seq', 52 );  
--
-- AUTO_INCREMENT for table kpis
--
create sequence kpis_seq;
alter table kpis alter id set default nextval('kpis_seq');
Select setval('kpis_seq', 760 );  
--
-- AUTO_INCREMENT for table kpi_results
--
create sequence kpi_seq;
alter table kpi_results alter id set default nextval('kpi_seq');
Select setval('kpi_seq', 906952 );
  
--
-- AUTO_INCREMENT for table lite_comparisons
--
create sequence lite_seq;
alter table lite_comparisons alter id set default nextval('lite_seq');
Select setval('lite_seq', 65110 );
  
--
-- AUTO_INCREMENT for table pillars
--
create sequence pil_seq;
alter table pillars alter id set default nextval('pil_seq');
Select setval('pil_seq', 12 );  
--
-- AUTO_INCREMENT for table subtopics
--
create sequence sub_seq;
alter table subtopics alter id set default nextval('sub_seq');
Select setval('sub_seq', 47 );  
--
-- AUTO_INCREMENT for table topics
--
create sequence top_seq;
alter table topics alter id set default nextval('top_seq');
Select setval('top_seq', 29 );
--
-- AUTO_INCREMENT for table kpi_score_normalized
--
create sequence normalized_seq;
alter table kpi_score_normalized alter id set default nextval('normalized_seq');
Select setval('normalized_seq', 1 );


  
--
-- Constraints for dumped tables
--

--
-- Constraints for table countries
--
ALTER TABLE countries
  ADD CONSTRAINT countries_currency_id_foreign FOREIGN KEY (currency_id) REFERENCES currencies (id);
  
--
-- Constraints for table country_country_group
--
ALTER TABLE country_country_group
  ADD CONSTRAINT country_country_group_country_group_id_foreign FOREIGN KEY (country_group_id) REFERENCES country_groups (id),
  ADD CONSTRAINT country_country_group_country_id_foreign FOREIGN KEY (country_id) REFERENCES countries (id);

--
-- Constraints for table kpis
--
ALTER TABLE kpis
  ADD CONSTRAINT kpis_ibfk_1 FOREIGN KEY (source_id) REFERENCES sources (id),
  ADD CONSTRAINT kpis_ibfk_2 FOREIGN KEY (subtopic_id) REFERENCES subtopics (id);

--
-- Constraints for table kpi_results
--
ALTER TABLE kpi_results
  ADD CONSTRAINT kpi_results_country_id_foreign FOREIGN KEY (country_id) REFERENCES countries (id),
  ADD CONSTRAINT kpi_results_kpi_id_foreign FOREIGN KEY (kpi_id) REFERENCES kpis (id);

--
-- Constraints for table subtopics
--
ALTER TABLE subtopics
  ADD CONSTRAINT subtopics_pillar_id_foreign FOREIGN KEY (pillar_id) REFERENCES pillars (id),
  ADD CONSTRAINT subtopics_topic_id_foreign FOREIGN KEY (topic_id) REFERENCES topics (id);

--
-- Constraints for table kpi_score_normalized
--
  
ALTER TABLE kpi_score_normalized
  ADD CONSTRAINT kpi_score_normalized_country_id_foreign FOREIGN KEY (country_id) REFERENCES countries (id),
  ADD CONSTRAINT kpi_score_normalized_kpi_id_foreign FOREIGN KEY (kpi_id) REFERENCES kpis (id),
  ADD CONSTRAINT kpi_score_normalized_group_id_foreign FOREIGN KEY (group_id) REFERENCES country_groups (id);
