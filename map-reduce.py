# Mapper function
def map(key, value):
    user = value.split(',')[0]  # Get the user from the tweet
    yield user, 1

# Reducer function
def reduce(key, values):
    yield key, sum(values)
