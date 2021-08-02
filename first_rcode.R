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

# FRECUENCY POLYGONS
x=c(.314,.289,.282,.279,.275,.267,.266,.265,.256,.250,.249,.211,.161)
tmp=hist(x)
lines(c(min(tmp$breaks),tmp$mids,max(tmp$breaks)),c(0,tmp$counts,0),type="l")

#DENSITIES
data("faithful")
attach(faithful) #make eruptions visible
hist(eruptions,15,prob=T) #proportion, not frequencies
lines(density(eruptions)) #lines make a curve, default bandwidth
lines(density(eruptions,bw="SJ"),col="red") #Use SJ bandwidth in red

#BIVARIATE DATA
#Bivariate Categorial Data

smokes=c("Y","N","N","Y","N","Y","Y","Y","N","Y")
amount=c(1,2,2,3,3,1,2,1,3,2)
table(smokes,amount)

#build a proportions table
tmp=table(smokes,amount)    #store the table
old.digits=options("digits") #store de number of digits
options(digits = 3)         #print only 3 decimal places
prop.table(tmp,1)           #the rows sum to 1 now

prop.table(tmp,2)           #the columns sum to 1 now

prop.table(tmp)             #all numbers sum to 1

options(digits = old.digits)  #restore the number of digits #THERE IS A ERROR OVER HERE

#PLOTING TABULAR DATA (p. 20)

barplot(table(smokes,amount))
barplot(table(amount,smokes))
smokes=factor(smokes) #for names
barplot(table(smokes,amount), beside = TRUE, legend.text = T) 
barplot(table(amount,smokes), main="table(amount,somokes)",beside = TRUE,legend.text = c("less than 5","5-10","more than 10"))
  
#Conditional proportions (p.25)

prop=function(x) x/sum(x)
apply(x,2,prop) #it's not working
t(apply(x,1,prop)) #it's not working

#Handling bivariate data: categorical vs. numerical (p.26)
x=c(5,5,5,13,7,11,11,9,8,9)
y=c(11,8,4,5,9,5,10,5,4,10)
boxplot(x,y)

#amount=scan()
#category=scan()
amount=c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9, 11, 8, 4, 5, 9, 5, 10, 5, 4, 10)
category=c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
boxplot(amount~category)

#Bivariate data: numerical vs. numerical (p.26)
#1st. Comparing them

#library("Simple")  doesn't work.  Use library("UsingR") instead
library("UsingR")
data("home")  #read in dataset home
attach(home)
names(home)
boxplot(scale(old),scale(new)) #make a boxplot after scaling each  #it doesn't work
detach(home)

#using Stripchart for the same
attach(home)
stripchart(scale(old),scale(new)) #it doesn't work.  it says is invalid

#using Violinplot
simple.violinplot(scale(old),scale(new))

#Using scatterplots to compare relationships
data(home); attach(home)
plot(old,new)
detach(home)

#what does attaching do?
x=1:2
y=c(2,4)
df=data.frame(x=x,y=y)
ls()    #list all the variables known
rm(y)   #delete the y variable
attach(df) #attach the dataframe
ls()  #y is visible, but doesn't show up
ls(pos=2) #y is in position 2 from being attached
y  #y is visible because df is attached
x #which x did we find, x of df[['x']]

x=c(1,3) #assign to x
df   #not the x in df
detach(df)
x  #assigned to real x variable
y #y isn't found

#LINEAR REGRESSION (P.28)
library("UsingR")
data(home)
attach(home)
x=old
y=new
plot(x,y)
abline(lm(y~x))
detach(home)

#doing the same with  simple.lm function
data(home)
attach(home)
names(home)
head(home$old)
head(home$new)
class(home$new)
x=old
y=new
simple.lm(x,y)  #make the same plot and returns the regression coefficients

#we can access the coefficients directly with the function "coef"
lm.res=simple.lm(x,y)  #store the answer in lm.res
coef(lm.res)
coef(lm.res)[1]

#RESIDUAL PLOTS
simple.lm(x,y,show.residuals = TRUE)  #simple.lm can do it.  We just need to ask

#to access residuals directly, you can use the command "resid" in "lm" result
lm.res=simple.lm(x,y)
the.residuals=resid(lm.res)  #this is how to get residuals
plot(the.residuals)

#CORRELATION COEFFICIENTS (p. 31)  #Pearson correlation
cor(x,y)  #to find R
cor(x,y)^2 #to find R^2

#The Spearman rank correlation
rank(c(2,3,5,7,11))
rank(c(5,3,2,7,11))
rank(c(5,5,2,7,5))

cor(rank(x), rank(y)) #0.925 as result, close to 1

#another way to do the same
cor.sp<- function(x,y) cor(rank(x),rank(y))
cor.sp(x,y)  #0.925 as a result. the same!!

#LOCATING POINTS (p.31)
library(UsingR)  #use this package to get into Florida dataset
data("florida")
names(florida)
attach(florida)   #so we can get at the names BUSH, ...
simple.lm(BUSH,BUCHANAN)
detach(florida)   #clean up
#to identify outliers, use the "identify" function
attach(florida)
identify(BUSH,BUCHANAN,n=2)  #n=2 gives two points
BUSH[50]
BUCHANAN[50]
florida[50,]

simple.lm(BUSH[-50],BUCHANAN[-50])  #This model fits better

#Using simple.lm to predict
simple.lm(BUSH[-50],BUCHANAN[-50],pred = BUSH[50])

#RESISTANT REGRESSION
simple.lm(BUSH,BUCHANAN)
abline(65.57350,0.00348)

#using rlm or lqs for resistant regression (p.33)
library(MASS)
attach(florida)
plot(BUSH,BUCHANAN)  #a scatter plot
abline(lm(BUCHANAN~BUSH), lty=1)  #lty sets line type
abline(rlm(BUCHANAN~BUSH), lty=2)  #lty sets line type
#legend(locator(1),legend = c("lm","rlm"),lty=1:2) #add legend #doen't work
detach(florida)

attach(florida)
plot(BUSH,BUCHANAN)
abline(rlm(BUCHANAN~BUSH),lty=1)
abline(rlm(BUCHANAN[-50]~BUSH[-50]),lty=2)

#R BASICS: Ploting graphs using R (p. 34)
#creating new pltos with plot and curve
x=seq(0,4,by=.1)  #create the x values
plot(x,x^2,type = "l") #type="l" to make line
curve(x^2,0,4)

#adding to a graph with points, abline, lines, and curve
miles=(0:8)*4
#tread = scan()
tread=c(394, 329, 291, 255, 229, 204, 179, 163, 150)
plot(miles, tread)
abline(lm(tread~miles ))
## or as we know the intercept and slope
abline(360,-7.3)
## or using points
points(miles,360-7.3*miles,type="l")
## or using lines
lines(miles, 360 - 7.3 * miles)
curve(360 - 7.3*x,add = T)  #add a function of x

#MULTIVARIATE DATA (p. 36)
