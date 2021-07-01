print("hello")

typos=c(2,3,0,3,1,0,0,1)

typos

mean(typos)
median(typos)
var(typos)

ex.one=1
ex.one

typos.draft1=c(2,3,0,3,1,0,0,1)
typos.draft2=c(0,3,0,3,1,0,0,1)
typos.draft2=typos.draft1
typos.draft2[1]=0
typos.draft2

typos.draft2[c(1,2,3)]
max(typos.draft2)
typos.draft2==3
which(typos.draft2==3)

sum(typos.draft2)
sum(typos.draft2>0)
typos.draft1-typos.draft2

x=c(45,43,46,48,51,46,50,47,46,45)
mean(x)
median(x)
max(x)
min(x)

x=c(x,48,49,51,50,49)
length(x)
x[16]=41
x[17:20]=c(40,38,35,40)

day=5
mean(x[day:(day+4)])
x[day:(day+4)]

cummax(x)
cummin(x)

#Working with Mathematics
whale=c(74,122,235,111,292,111,211,133,156,79)
mean(whale)
var(whale)
sd(whale)

#Categorical Data
x=c("Yes","No","No", "Yes", "Yes")
table(x)
factor(x)

#beer=scan()
beer = c(3, 4, 1, 1, 3, 4, 3, 3, 1, 3, 2, 1, 2, 1, 2, 3, 2, 3, 1, 1, 1, 1, 4, 3, 1)
barplot(beer)
barplot(table(beer))
barplot(table(beer)/length(beer))

beer.counts=table(beer)
pie(beer.counts)
names(beer.counts)=c("domestic\n can","domestic\n bottle","microbrew","import")
pie(beer.counts)
pie(beer.counts,col=c("purple","green2","cyan","white"))

#Numeric Measures
sals=c(12,.4,5,2,50,8,3,1,4,0.25)
mean(sals)
var(sals)
sd(sals)
median(sals)
fivenum(sals)
summary(sals)
sort(sals)

data=c(10,17,18,25,28,28)
summary(data)
quantile(data,.25)
quantile(data,c(.25,.75))

#Resistant measures of center and spread (p.16)
mean(sals,trim=1/10)
mean(sals,trim=2/10)
IQR(sals)
mad(sals)
median(abs(sals-median(sals)))
median(abs(sals-median(sals)))*1.4826

#Stem-and-leaf Charts (p.17)
#scores=scan()
scores=c(2,3,16,23,14,12,4,13,2,0,0,0,6,28,31,14,4,8,2,5)
apropos("stem")
stem(scores)

#Making numeric data categorical
sals=c(12,0.4,5,2,50,8,3,1,4,0.25)
cats=cut(sals,breaks=c(0,1,5,max(sals))) #we use 'cut' command
cats
table(cats) #organize
levels(cats)=c("poor","rich","rolling in it")
table(cats)

#Histograms (p.18)
#x=scan()
x=c(29.6, 28.2, 19.6, 13.7, 13.0, 7.8, 3.4, 2.0, 1.9, 1.0, 0.7, 0.4, 0.4, 0.3, 0.3, 0.3, 0.3, 0.3, 0.2, 0.2, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1)
x
hist(x)                     #frequencies
hist(x,probability=TRUE)    #proportions(or probabilities)
rug(jitter(x))              #add tick marks
hist(x,breaks=10)           #10 breaks
hist(x,breaks=c(0,1,2,3,4,5,10,20,max(x)))  #specify break points


#loading data of "movies" is missing

#Boxplots
library("UsingR") #library("Simple")
data("movies")
names(movies)
attach(movies) #to access the names above
boxplot(current,main="current receipts",horizontal = TRUE)
boxplot(gross,main="gross receipts",horizontal = TRUE)
detach(movies) #tidy up




#
# library("ts") not working 

install.packages("tswge")
data("lynx")
summary(lynx)

