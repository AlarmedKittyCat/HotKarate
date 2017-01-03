USE adlister_db;

DROP TABLE IF EXISTS ad_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(240) NOT NULL,
  email VARCHAR(240) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(240) NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE
);

CREATE TABLE categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  category VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE ad_categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ad_id INT UNSIGNED,
  category_id INT UNSIGNED,
  PRIMARY KEY (id),
  FOREIGN KEY (ad_id) REFERENCES ads (id)
    ON DELETE CASCADE,
  FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO users(username, email, password) VALUES
  ('user1', 'user@user.com', '$2a$12$RCN0E4JVTXK511xqszTifu.12C8SsxBVKocdDDZWt4mUhTwi6RFwe'),
  ('user2', 'user@user.com', '$2a$12$RCN0E4JVTXK511xqszTifu.12C8SsxBVKocdDDZWt4mUhTwi6RFwe'),
  ('user3', 'user@user.com', '$2a$12$RCN0E4JVTXK511xqszTifu.12C8SsxBVKocdDDZWt4mUhTwi6RFwe'),
  ('user4', 'user@user.com', '$2a$12$RCN0E4JVTXK511xqszTifu.12C8SsxBVKocdDDZWt4mUhTwi6RFwe'),
  ('user5', 'user@user.com', '$2a$12$RCN0E4JVTXK511xqszTifu.12C8SsxBVKocdDDZWt4mUhTwi6RFwe');

INSERT INTO ads(user_id, title, description) VALUES
  (1, 'Baker for Hire',
   'Bake you a cake as fast as I can'),
  (3, 'Foot Massage',
  'Sexy or not you call it.'),
  (5, 'Meat slinger',
    'Will sling meat your way. Any way you want it.'),
  (2, 'Fishing buddy',
  'Pretty good at not talking. Great at drinking brew too. HMU'),
  (4, 'Cheese maker',
  'Homemade cheese. Free of FDA regulations just like God intended. Delivery by dead drops only'),
  (1, 'Sex Therapist $100 a session',
  'I know how to do the thing REAL good. I will teach you how to sex real good.'),
  (3, 'Live Bed Bugs 50 bugs per box',
  'Have a friend you wanna throw next level shade at? Bed bug them and get ''em good.'),
  (3, 'Drugs',
   'They''re not illegal I swear. Good ol wholesome'),
  (4, 'Wife''s car newish used model-T',
   'No AC, cannot do highway driving, sick ass sound system'),
  (3, 'Gently used deodorant',
   'I have wet dog, smelly garbage, old dumpster scents.'),
  (4, 'TV Lightly Used',
   'Only ever used to watch the VS fashion show'),
  (3, 'TV Lightly Abused',
   'Free to a good home.'),
  (5, 'NEED A "Cleaner" ASAP',
   'Got a big mess over at the Texan II. Big stain needs to be cleaned up. The works, will pay for a faster clean.'),
  (1, '$20 and i''ll fight your dad',
   'Trained in Krav Maga and hapkido. Anywhere he meets me guaranteed it''s going down.'),
  (2, 'Actual dog from the movie Up',
   'Doug will be your best friend. You might want to get on good terms with your friends and family real quick because you won''t need anyone else after Doug'),
  (3, 'Professional flappy bird player',
   'I''ll beat all your mates'' highscores'),
  (5, 'Personal Pokemon Trainer',
  'Friends making fun of you because of your low level on pokemon go? Too weak to go out and catch pokemon like a real trainer? I got you covered!');

INSERT INTO categories (category) VALUES
  ('furniture'),
  ('kitchen appliances'),
  ('bathroom appliances'),
  ('lighting'),
  ('furnishments'),
  ('text books'),
  ('clothes'),
  ('other');

INSERT INTO ad_categories(ad_id, category_id) VALUES
  (1, 2),
  (1, 3),
  (1, 6),
  (3, 4),
  (3, 7),
  (3, 8),
  (4, 1),
  (4, 6),
  (5, 1),
  (5, 3),
  (5, 8),
  (6, 4),
  (6, 6),
  (7, 8),
  (8, 1),
  (13, 2),
  (10, 3),
  (12, 4),
  (17, 5),
  (15, 6),
  (11, 6),
  (7, 8),
  (14, 1),
  (9, 2),
  (10, 3),
  (2, 4),
  (16, 5),
  (16, 6),
  (16, 7),
  (2, 8);
