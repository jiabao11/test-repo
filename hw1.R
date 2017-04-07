setwd("//Users//Jiabao//Documents//coursera//R programming")
data=read.csv('hw1_data.csv')
colnames(data)
data[1:2,]
dim(data)
str(data)
data[152:153,]
data[47,"Ozone"]
Oz=data[,"Ozone"]
sum(is.na(Oz))
mean(Oz[!is.na(Oz)])

data_sub=data[(!is.na(Oz))&(!is.na(data[,"Temp"])),]#complete.cases(data)
index=data_sub[,"Ozone"]>31&data_sub[,"Temp"]>90
mean(data_sub[index,"Solar.R"])
data_sub[index,"Solar"]

mean(data[data[,"Month"]==6,],"Temp")
