from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("YourAppName") \
    .config("spark.local.mode", "true")

spark.sql("select 1").show()