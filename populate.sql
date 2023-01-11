INSERT INTO Testers (tester_id, tester_name) VALUES
('AL','Anna Lee C. Iijima'),
('AP','Alexander Peartree'),
('MS','Michael Schachner'),
('KO','Kerin O’Keefe'),
('RV','Roger Voss'),
('VB','Virginie Boone'),
('MK','Matt Kettmann');


INSERT INTO Provinces (province_id, province_name) VALUES
('RH','Rheinhessen'),
('MI','Michigan'),
('NS','Northern Spain'),
('SS','Sicily & Sardina'),
('VI','Virginia'),
('AL','Alsace'),
('CA','California');



INSERT INTO Countries (country_id, country_name) VALUES
('US','United States'),
('GE','Germany'),
('SP','Spain'),
('IT','Italy'),
('FR','France');

  
INSERT INTO Wines (wine_id, designation, country_id, province_id, points, price, tester_id) VALUES
('1','Shine','GE','RH','87.0','12.0','AL'),
('2','Shine','US','MI','87.0','13.0','AP'),
('3','Ars In Vitro','SP','NS','87.0','15.0','MS'),
('4','Ficiligno','IT','SS','87.0','19.0','KO'),
('5','Vin de Maison','US','VI','87.0','23.0','AP'),
('6','Nouveau','FR','AL','87.0','24.0','RV'),
('7','Ruth’s Reach','US','CA','91.0','25.0','VB'),
('8','Les Natures','FR','AL','87.0','27.0','RV'),
('9','Aynat','IT','SS','87.0','35.0','KO'),
('10','1105','US','CA','90.0','48.0','MK');