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
  (1, 'Generic Ad Title',
   'Tootsie roll cupcake gummies tootsie roll cotton candy biscuit croissant chocolate. Marzipan sugar plum marshmallow jujubes. I love croissant marzipan wafer. Dragée icing donut tootsie roll bonbon lemon drops tart brownie. Carrot cake gummi bears pudding danish topping. Lollipop biscuit macaroon cotton candy apple pie gingerbread.
Carrot cake I love jelly-o. I love lemon drops I love I love pie dessert danish. Cake sesame snaps I love apple pie. Chupa chups cotton candy marshmallow bonbon. Carrot cake cake gummi bears jujubes macaroon cheesecake marshmallow jelly-o. Cake chocolate jelly-o candy. Gummies donut halvah dessert dessert wafer cheesecake I love. I love chocolate bar dessert toffee. Icing apple pie donut marzipan lemon drops candy donut caramels.'),
  (3, 'DVD Collection',
  'Look, just because I don''t be givin'' no man a foot massage don''t make it right for Marsellus to throw Antwone into a glass motherfuckin'' house, fuckin'' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, ''cause I''ll kill the motherfucker, know what I''m sayin''?
Well, the way they make shows is, they make one show. That show''s called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they''re going to make more shows. Some pilots get picked and become television programs. Some don''t, become nothing. She starred in one of the ones that became nothing.'),
  (5, 'Meat',
    'Spicy jalapeno rump strip steak jowl shoulder chuck sirloin pork short loin pork loin pig ham hock. Picanha tail pork belly flank strip steak. Turkey burgdoggen t-bone venison, bresaola picanha spare ribs bacon. Boudin pancetta andouille spare ribs ball tip jowl beef salami pig turducken picanha jerky burgdoggen cow landjaeger. Prosciutto corned beef tail pork belly pork loin, pork chop turducken porchetta alcatra capicola ground round burgdoggen.

Strip steak biltong cow, frankfurter short loin capicola flank hamburger. Jowl tongue pork belly cupim sirloin kielbasa leberkas. Strip steak filet mignon ham picanha, brisket beef pig. Fatback jerky short loin, salami corned beef kielbasa doner tenderloin tri-tip jowl filet mignon shoulder chicken tail.'),
  (2, 'Fish',
  'Gombessa finback cat shark lookdown catfish killifish tubeblenny Lost River sucker carpetshark seahorse. Killifish pleco; mudfish barb common carp chum salmon dogfish horsefish surfperch Gila trout alooh huchen. Oarfish--climbing catfish; yellowbanded perch, yellowtail kingfish whitebait nibbler; cowfish firefish lake whitefish sandfish flying characin. Slimy mackerel alfonsino skipjack tuna crocodile shark unicorn fish duckbill eel great white shark? Rice eel river loach yellowfin surgeonfish common tunny sauger Cherubfish greenling yellow bass orangespine unicorn fish damselfish flier, pink salmon, plunderfish Sundaland noodlefish, skipjack tuna.
Peamouth stargazer, "saury, bonnetmouth Atlantic silverside archerfish oldwife shad ghost flathead; goby shell-ear blue eye." Nurse shark rohu, gray reef shark triplefin blenny gray mullet. Atlantic cod threadfin bream Norwegian Atlantic salmon sheepshead minnow banded killifish tripletail sauger pirate perch broadband dogfish. Asian carps, damselfish sea lamprey threadtail ziege ghoul sand stargazer sarcastic fringehead lighthousefish, sheepshead minnow seamoth. Alewife morwong betta gombessa, eulachon cobbler tope wrymouth. New World rivuline. South American Lungfish galjoen fish, Pacific albacore rough sculpin. Tang ghoul sea bream slender barracudina! Barbelless catfish gouramie triplefin blenny blacktip reef shark. Pacific hake, Redfish yellowfin grouper Owens pupfish yellowtail snapper.'),
  (4, 'Cheese',
  'Rubber cheese ricotta cheesy grin. Blue castello hard cheese when the cheese comes out everybody''s happy emmental chalk and cheese croque monsieur hard cheese croque monsieur. Blue castello taleggio red leicester squirty cheese danish fontina airedale roquefort stilton. Blue castello cheese slices camembert de normandie cheese slices fromage frais boursin halloumi paneer. Swiss.
Mozzarella smelly cheese everyone loves. Camembert de normandie goat jarlsberg edam brie hard cheese parmesan the big cheese. Taleggio cheesecake cauliflower cheese everyone loves paneer fromage frais fondue everyone loves. Dolcelatte danish fontina smelly cheese fromage frais halloumi.'),
  (1, 'Zombie Dick',
  'Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.'),
  (3, 'TV',
  'Say what? Um, is this the boring, peaceful kind of taking to the streets? Wow, you got that off the Internet? In my day, the Internet was only used to download pornography. Then we''ll go with that data file!
I was all of history''s great robot actors - Acting Unit 0.8; Thespomat; David Duchovny! Can we have Bender Burgers again? You seem malnourished. Are you suffering from intestinal parasites? You''ll have all the Slurm you can drink when you''re partying with Slurms McKenzie!'),
  (5, 'Pokemon',
  'Bulbasaur Ivysaur Venusaur Charmander Charmeleon Charizard Squirtle Wartortle Blastoise Caterpie Metapod Butterfree Weedle Kakuna Beedrill Pidgey Pidgeotto Pidgeot Rattata Raticate Spearow Fearow Ekans Arbok Pikachu Raichu Sandshrew Sandslash Nidoran Nidorina Nidoqueen Nidoran Nidorino Nidoking Clefairy Clefable Vulpix Ninetales Jigglypuff Wigglytuff Zubat Golbat Oddish Gloom Vileplume Paras Parasect Venonat Venomoth Diglett Dugtrio Meowth Persian Psyduck Golduck Mankey Primeape Growlithe Arcanine Poliwag Poliwhirl Poliwrath Abra Kadabra Alakazam Machop Machoke Machamp Bellsprout Weepinbell Victreebel Tentacool Tentacruel Geodude Graveler Golem Ponyta Rapidash Slowpoke Slowbro Magnemite Magneton Farfetch?d Doduo Dodrio Seel Dewgong Grimer Muk Shellder Cloyster Gastly Haunter Gengar Onix Drowzee Hypno Krabby Kingler Voltorb Electrode Exeggcute Exeggutor Cubone Marowak Hitmonlee Hitmonchan Lickitung Koffing Weezing Rhyhorn Rhydon Chansey Tangela Kangaskhan Horsea Seadra Goldeen Seaking Staryu Starmie Mr. Mime Scyther Jynx Electabuzz Magmar Pinsir Tauros Magikarp Gyarados Lapras Ditto Eevee Vaporeon Jolteon Flareon Porygon Omanyte Omastar Kabuto Kabutops Aerodactyl Snorlax Articuno Zapdos Moltres Dratini Dragonair Dragonite Mewtwo MewnnBulbasaur Ivysaur Venusaur Charmander Charmeleon Charizard Squirtle Wartortle Blastoise Caterpie Metapod Butterfree Weedle Kakuna Beedrill Pidgey Pidgeotto Pidgeot Rattata Raticate Spearow Fearow Ekans Arbok Pikachu Raichu Sandshrew Sandslash Nidoran Nidorina Nidoqueen Nidoran Nidorino Nidoking Clefairy Clefable Vulpix Ninetales Jigglypuff Wigglytuff Zubat Golbat Oddish Gloom Vileplume Paras Parasect Venonat Venomoth Diglett Dugtrio Meowth Persian Psyduck Golduck Mankey Primeape Growlithe Arcanine Poliwag Poliwhirl Poliwrath Abra Kadabra Alakazam Machop Machoke Machamp Bellsprout Weepinbell Victreebel Tentacool Tentacruel Geodude Graveler Golem Ponyta Rapidash Slowpoke Slowbro Magnemite Magneton Farfetch?d Doduo Dodrio Seel Dewgong Grimer Muk Shellder Cloyster Gastly Haunter Gengar Onix Drowzee Hypno Krabby Kingler Voltorb Electrode Exeggcute Exeggutor Cubone Marowak Hitmonlee Hitmonchan Lickitung Koffing Weezing Rhyhorn Rhydon Chansey Tangela Kangaskhan Horsea Seadra Goldeen Seaking Staryu Starmie Mr. Mime Scyther Jynx Electabuzz Magmar Pinsir Tauros Magikarp Gyarados Lapras Ditto Eevee Vaporeon Jolteon Flareon Porygon Omanyte Omastar Kabuto Kabutops Aerodactyl Snorlax Articuno Zapdos Moltres Dratini Dragonair Dragonite Mewtwo Mew');

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
  (8, 2),
  (8, 3),
  (8, 4),
  (8, 5),
  (8, 6),
  (8, 7),
  (8, 8);
