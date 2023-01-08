CREATE TABLE tweets (
  user STRING,
  tweet STRING,
  sentiment INT
);

INSERT INTO TABLE tweets
SELECT user, tweet, SENTIMENT(tweet) as sentiment
FROM mapreduce_output;
