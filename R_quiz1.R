library(data.table)
housing <- fread("./dataset/getdata-data-ss06hid.csv")

nrow(housing[VAL==24])

xml <- xmlTreeParse("http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", useInternalNodes=T)
xmldata <- xmlRoot(xml)
temp <- xpathSApply(xml, "//zipcode", xmlValue)
length(temp[temp == "21231"])

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", "./dataset/idaho_housing.csv")
list.files("./dataset")
housing <- fread("./dataset/idaho_housing.csv")

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", "./dataset/nat_gas.xlsx")
list.files("./dataset")

install.packages("xlsxjars")
library(xlsx)

