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
('Nicaraguan Maragogipe','Café avec des notes de fruits, une acidité vive et un corps plein.', 691550753, 'Nicaragua', 28.60, 'Fruité', FALSE );