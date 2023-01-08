# Mapper function
def map(key, value):
    # Parse the tweet JSON
    tweet = json.loads(value)
    # Extract the tweet text, user name, and number of followers
    text = tweet['text']
    user = tweet['user']['screen_name']
    followers = tweet['user']['followers_count']
    # Yield the extracted values as a key-value pair
    yield (user, followers), text
