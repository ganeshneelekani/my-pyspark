from pyspark.sql import SparkSession

# Create a SparkSession
spark = SparkSession.builder \
    .appName("PySpark Application") \
    .getOrCreate()

# Your PySpark application logic here
# For example, let's create a DataFrame from a list of integers and show the contents
data = [1, 2, 3, 4, 5]
df = spark.createDataFrame(data, "integer").toDF("number")
df.show()

# Stop the SparkSession
spark.stop()