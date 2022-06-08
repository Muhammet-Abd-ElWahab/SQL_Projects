DROP TABLE IF EXISTS "articles";

CREATE TABLE articles (
article_key VARCHAR PRIMARY KEY,
category VARCHAR,
headline VARCHAR,
short_description VARCHAR,
release_date VARCHAR,
keywords VARCHAR
);

\copy articles FROM 'news_articles.csv' DELIMITER ',' CSV HEADER;