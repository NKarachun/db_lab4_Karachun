CREATE TABLE Wines
(
  wine_id              INT   NOT NULL,
  designation          char(100)  NOT NULL,
  country_id           char(80)  NOT NULL REFERENCES Countries (country_id),
  province_id          char(2)  NOT NULL REFERENCES Provinces (province_id),
  points               float8 NOT NULL,
  price                float8 NOT NULL,
  tester_id            char(3)  NOT NULL REFERENCES Testers (tester_id),
  CONSTRAINT pk_wines PRIMARY KEY (wine_id)
);


CREATE TABLE Countries
(
  country_id      char(2)  NOT NULL,
  country_name    char(20)  NOT NULL, 
  CONSTRAINT pk_countries PRIMARY KEY (country_id)
);


CREATE TABLE Provinces
(
  province_id     char(2)  NOT NULL,
  province_name   char(50)  NOT NULL,
  CONSTRAINT pk_provinces PRIMARY KEY (province_id)
);


CREATE TABLE Testers
(
  tester_id      char(3)  NOT NULL,
  tester_name    char(60) NOT NULL, 
  CONSTRAINT pk_testers PRIMARY KEY (tester_id) 
);
