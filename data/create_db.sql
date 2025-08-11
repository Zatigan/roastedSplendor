-- Cafés

DROP TABLE IF EXISTS "coffee";

CREATE TABLE IF NOT EXISTS "coffee"(
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" TEXT NOT NULL,
  "description" TEXT NOT NULL,
  "reference" INTEGER NOT NULL UNIQUE,
  "origin" TEXT NOT NULL,
  "kilo_price" REAL NOT NULL,
  "main_characteristic" TEXT NOT NULL,
  "available" BOOLEAN NOT NULL,
  "date" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO "coffee" ("name", "description", "reference", "origin", "kilo_price", "main_characteristic", "available" ) VALUES 
('Espresso','Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.', 100955890, 'Italie', 20.99, 'Corsé', TRUE ), 
('Columbian', 'Café moyennement corsé avec une acidité vive et une saveur riche.', 100955894, 'Colombie', 18.75, 'Acide', TRUE ), 
('Ethiopian Yirgacheffe','Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.',105589090, 'Éthiopie', 22.50, 'Fruité', TRUE ), 
('Brazilian Santos','Café doux et lisse avec un profil de saveur de noisette.', 134009550, 'Brésil', 17.80, 'Doux', TRUE ), 
('Guatemalan Antigua','Café corsé avec des nuances chocolatées et une pointe d''épice.', 256505890, 'Guatemala', 21.25, 'Corsé', TRUE ), 
('Kenyan AA','Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.', 295432730, 'Kenya', 23.70, 'Acide', TRUE ), 
('Sumatra Mandheling','Café profond et terreux avec un corps lourd et une faible acidité.', 302932754, 'Indonésié', 19.95, 'Corsé', TRUE ), 
('Costa Rican Tarrazu','Café vif et net avec une finition propre et une acidité vive.', 327302954, 'Costa Rica', 24.50, 'Acide', TRUE ), 
('Vietnamese Robusta','Café audacieux et fort avec une saveur robuste distinctive.', 549549090,'Vietnam', 16.75, 'Épicé', TRUE ), 
('Tanzanian Peaberry','Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.', 582954954, 'Tanzanie', 26.80, 'Fruité', TRUE ), 
('Jamaican Blue Mountain','Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.', 589100954, 'Jamaïque', 39.25, 'Doux', TRUE ), 
('Rwandan Bourbon','Café avec des notes florales prononcées, une acidité vive et un corps moyen.', 650753915, 'Rwanda', 21.90, 'Fruité', TRUE ), 
('Panamanian Geisha','Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.', 795501340, 'Panama', 42.00, 'Fruité', TRUE ), 
('Peruvian Arabica','Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.', 954589100, 'Pérou', 19.40, 'Chocolaté', FALSE ), 
('Hawaiian Kona','Café rare au goût riche, une acidité douce et des nuances subtiles.', 958090105, 'Hawaï', 55.75, 'Doux', FALSE ), 
('Nicaraguan Maragogipe','Café avec des notes de fruits, une acidité vive et un corps plein.', 691550753, 'Nicaragua', 28.60, 'Fruité', FALSE ),
('Costa Rican Naranjo','Café de terroir nous révèle des saveurs d’amande, de noisette ainsi que des notes florales et boisées.', 465973216, 'Costa Rica', 31.80, 'Fruité', TRUE ),
('Lojan Sierra','Café aux notes de raisins et de noisette. Une tasse équilibrée et raffinée', 379843219, 'Equateur', 41.20, 'Doux', FALSE ),
('Kayanzan Inka','Café avec des notes de caramel et d''agrumes.', 798432023, 'Equateur', 30.40, 'Fruité', FALSE ),
('Ugandan Zombo','Café des notes fruitées de pomme et de raisin', 563942138, 'Ouganda', 44.90, 'Fruité', TRUE ),
('Ethiopian Sidamo','Café aux notes florales et fruitées, avec une acidité vive.', 981489743, 'Éthiopie', 29.99, 'Acide', TRUE ),
('Balinese Toya','Café séduisant avec ses notes de chocolat, de miel et des notes finales de fruits rouges.', 479321586, 'Indonésie', 40.30, 'Doux', TRUE ),
('Dominican Iguana','Café aux notes gourmandes de noisettes et de chocolat au lait, avec des notes de caramel et fruitées avec du citron jaune.', 146973248, 'République Dominicaine', 31.80, 'Doux', FALSE ),
('Papuan Raggiana','Café aux notes de noix, avec une belle acidité, des saveurs d''abricot et une pointe de rhubarbe', 974235862, 'Papouasie-Nouvelle-Guinée', 33.00, 'Acide', TRUE );