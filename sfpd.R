library(SparkR)
library(ggplot2)
sc <- sparkR.init("local[*]")

sqlCtx<- sparkRSQL.init(sc)

#create a data frame out of csv

#crime <- read.df(sqlContext, "./sfpd_incident_2013.csv", "com.databricks.spark.csv", header="true")
#head(crime)
#save crime data into parquet format, note double quotes doesn’t work
#write.df(crime, path='crime.parquet', source='parquet', mode='overwrite')

# load the parquet file into a data frame
sfpd13 <- loadDF(sqlCtx, paste(getwd(), "/sfpd2013.parquet", sep = ""), "parquet")

#aggreage crime data per PdDistrict
perPd <- agg(groupBy(sfpd13, "PdDistrict"), crime = countDistinct(sfpd13$IncidntNum))
head(perPd)
#By crime type
perType <- agg(groupBy(sfpd13, "Category"), crime = count(sfpd13$IncidntNum))
head(perType)













