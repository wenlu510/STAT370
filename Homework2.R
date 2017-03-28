Crime<-read.csv("~/Desktop/2014_Homicides.csv")
View(Crime)
attach(Crime)
D1<-factor(Description)
is.factor(D1)
D1[1:15]
D2<-factor(District)
is.factor(D2)
D2[1:15]
barplot(prop.table(table(D1)))
barplot(prop.table(table(D2)),las=2)
dotchart(table(D2))




