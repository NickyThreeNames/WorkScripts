tDist <- sqldf("select VANID, Age, Sex, RaceName, MaritalStatus, General12, X2012_PartisanshipScr from targeteddistricts")

library(ggplot2)
library(ggthemes)
library(scale)
#need to convert "General12" to a factor for facet to work#
ggplot(tDist, aes(x=Age))+geom_bar(binwidth=7, color="black", fill="blue")+xlab("Age")+ylab("Count")+ggtitle("Age of In-person voter vs. Absentee in Target Districts")+theme_economist(base_size=16)+scale_y_continuous(labels=comma)+facet_grid(~General12))

ggplot(tDist, aes(x=X12_PartisanshipScr))+geom_bar(binwidth=7, color="black", fill="blue")+xlab("Partisanship")+ylab("Count")+ggtitle("Partisanship of In-person vs. Absentee in Target Districts")+theme_economist(base_size=16)+scale_y_continuous(labels=comma)+facet_grid(~General12)

ggplot(hd23vshareprepped, aes(x=variable2, y=value))+geom_bar(stat="identity", color="black", fill="blue")+ggtitle("HD 23")+theme_economist(base_size=16)+scale_y_continuous(labels=comma)+xlab("AV Target")+ylab("Vote Share")


#Pull each district from the voteshareHD matrix#
hd23vshare<-sqldf("select HD2, Persuade_High, Persuade_Low, DemBase_Low, DemBase_High from voteshareHD where HD2=23")

#Convert to matrix and melt for barchart
hd23vshare<-as.matrix(hd23vshare)
hd23vshareprep<-melt(hd23vshare, id="HD2")

#Remove top row from melt
hd23vshareprep<-hd23vshareprep[-1, ]

#create barchart of vote share for each HD in target group#
ggplot(hd23vshareprep, aes(x=Var2, y=value))+geom_bar(stat="identity", color="black", fill="blue")+theme_economist(base_size=16)+scale_y_continuous(labels=comma)+xlab("Target Group")+ylab("Vote Share")+ggtitle("Vote Share in HD 23")

#Facet of how folks voted
ggplot(tDist, aes(x=X2012_PartisanshipScr))+geom_bar(color="black", fill="blue")+xlab("Partisanship")+ylab("Count")+ggtitle("Partisanship of In-person voter vs. Absentee")+theme_economist(base_size=16)+scale_y_continuous(labels=comma)+facet_grid(~General1	2f)

#subset tDist to just the targets#
tdistSD17<-sqldf("select * from tDistricts where SD=17")

ggplot(trend2[4:21, ], aes(x=Year, y=value))+geom_path(aes(color=factor(variable)), size=1)+xlab("Year")+ylab("Vote Share")+ggtitle("Vote Share By Year")+theme_economist(base_size=14)+geom_text(aes(label=value))
