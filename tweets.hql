LOAD DATA INPATH '/user/hadoop/tweets' INTO TABLE tweets;

ADD FILE afinn.txt;

CREATE TABLE afinn (word STRING, score INT);

LOAD DATA LOCAL INPATH 'afinn.txt' INTO TABLE afinn;

CREATE TABLE tweets_sentiment AS
SELECT t.user, t.followers, t.text,
    SUM(a.score) AS sentiment
FROM tweets t
LEFT JOIN afinn a ON (t.text LIKE CONCAT('%', a.word, '%'))
GROUP BY t.user, t.followers, t.text;
