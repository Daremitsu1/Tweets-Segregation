# Reducer function
def reduce(key, values):
    # Concatenate the tweet texts into a single string
    texts = ' '.join(values)
    # Yield the user name, number of followers, and concatenated tweet text as a CSV string
    yield ','.join(map(str, key)) + ',' + 
