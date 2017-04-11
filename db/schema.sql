DROP TABLE IF EXISTS cocktails CASCADE;
DROP TABLE IF EXISTS user_cocktails CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS seasons CASCADE;
DROP TABLE IF EXISTS spirits CASCADE;
-- DROP TABLE IF EXISTS seasons_spirits CASCADE;
-- DROP TABLE IF EXISTS spirits_cocktails CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password_digest TEXT NOT NULL
);

CREATE TABLE seasons (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE spirits (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

-- Join table seasons/spirits
-- CREATE TABLE seasons_spirits (
--   id SERIAL PRIMARY KEY,
--   season_id INTEGER NOT NULL,
--   FOREIGN KEY (season_id) REFERENCES seasons(id),
--   spirit_id INTEGER NOT NULL,
--   FOREIGN KEY (spirit_id) REFERENCES spirits(id)
-- );

CREATE TABLE cocktails (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  ingredients TEXT NOT NULL,
  directions TEXT NOT NULL,
  img_url TEXT NOT NULL,
  season_id INTEGER,
  FOREIGN KEY (season_id) REFERENCES seasons(id),
  spirit_id INTEGER,
  FOREIGN KEY (spirit_id) REFERENCES spirits(id)
);

CREATE TABLE user_cocktails (
  id SERIAL PRIMARY KEY,
  name TEXT,
  ingredients TEXT,
  directions TEXT,
  season_id INTEGER,
  FOREIGN KEY (season_id) REFERENCES seasons(id),
  spirit_id INTEGER,
  FOREIGN KEY (spirit_id) REFERENCES spirits(id)
);

-- Join table spirits/cocktails
-- CREATE TABLE spirits_cocktails (
--   id SERIAL PRIMARY KEY,
--   spirit_id INTEGER NOT NULL,
--   FOREIGN KEY (spirit_id) REFERENCES spirits(id),
--   cocktail_id INTEGER NOT NULL,
--   FOREIGN KEY (cocktail_id) REFERENCES cocktails(id)
-- );
