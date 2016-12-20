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

INSERT INTO users(username, email, password) VALUES ('user', 'user@user.com', '$2a$12$RCN0E4JVTXK511xqszTifu.12C8SsxBVKocdDDZWt4mUhTwi6RFwe');

INSERT INTO ads(user_id, title, description) VALUES (1, 'Generic Ad Title', 'This is where the ad description will go');

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
  (1, 6);
