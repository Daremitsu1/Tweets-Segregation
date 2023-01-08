# Analyzing Tweets about Data Science
The goal of this project is to analyze tweets about data science using Flume, MapReduce, Hive, and Tableau.

Prerequisites:
Familiarity with Python, SQL, and Tableau
Basic understanding of Flume, MapReduce, and Hive
Access to a Hadoop cluster
Twitter API keys

Oozie file structure:
-/user/oozie/myproject
----/workflow.xml
----/coordinator.xml
----/lib/
--------/python-lib.zip  # Python libraries required by the MapReduce job
--------/afinn.txt       # AFINN lexicon required by the Hive query

