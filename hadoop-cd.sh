hadoop jar /path/to/hadoop-streaming.jar \
    -input /user/flume/tweets \
    -output /user/hadoop/tweets \
    -mapper "python mapper.py" \
    -reducer "python reducer.py"
