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
weight=c(150,135,210,140)
height=c(65,61,70,65)
gender=c("Fe","Fe","M","Fe")
study=data.frame(weight,height,gender)  #make de data frame
study

#diferent names are possible if desired
study=data.frame(w=weight,h=height,g=gender)
study

#you can give names to the rows
row.names(study)=c("Mary","Alice","Bob","Judy")
study

#Accesing data in data frames (p.37)
rm(weight)   #clean out old copy
attach(study)
weight

study[,'weight']  #all rows, just the weight column
study[,1]  #all rows, just the first column
study[,1:2] #all rows, just the first two columns
study['Mary',]  #only Mary's info
study['Mary','weight'] #only Mary's weight

#install.packages('jsonlite', dependencies=TRUE, repos='http://cran.rstudio.com/')
study$weight        #using $
study[['weight']]   #using the name
study[['w']]        #unambiguous shortcuts are ok
study[[1]]          #by position
study[study$gender=='Fe',]  #use $ to access gender via a list

#MANIPULATING DATA FRAMES: stack and unstack (p. 38)
data(PlantGrowth)
PlantGrowth

#brute force way
attach(PlantGrowth)
weight.ctrl=weight[group=="ctrl"]
#using 'unstack' function
unstack(PlantGrowth)

boxplot(unstack(PlantGrowth))

#USING R'S MODEL FORMULA NOTATION (p.39)
boxplot(weight ~ group) #response ~ predictor.  It is read: "Y is modeled by X" 

#WAYS TO VIEW MULTIVARIATE DATA (p. 39)
library(MASS)
data(Cars93)
attach(Cars93)
#make some categorical variable using cut
price=cut(Price,c(0,12,20,max(Price)))
levels(price)=c("cheap","okay","expensive")
mpg=cut(MPG.highway,c(0,20,30,max(MPG.highway)))
levels(mpg)=c("gas guzzler","okay","miser")
#now look at the relationships
table(Type)
table(price,Type)
table(price,Type,mpg)

#barplots to summarize data
barplot(table(price,Type),beside=T) #the price by different types
barplot(table(Type,price),beside=T) #type by different prices

#example: Boxplot of samples of random data
y=rnorm(1000)           #1000 random numbers
f=factor(rep(1:10,100)) #the number 1,2... 10 100 times
boxplot(y~f,main="Boxplot of normal random data with model notation")

#stripcharts
x=rnorm(100)
y=factor(rep(1:10,10))
stripchart(x~y)

#violin plots and density plots (p.41)
par(mfrow=c(1,3))     # 3 graphs per page
data("InsectSprays")  # load in the data
boxplot(count~spray,data=InsectSprays,col="lightgray")
library(UsingR) #to work simple.violinplot you need "UsingR" library
simple.violinplot(count~spray,data=InsectSprays,col="lightgray")
simple.densityplot(count~spray,data=InsectSprays)

#scatterplots
data("ToothGrowth")
attach(ToothGrowth)
head(ToothGrowth)

plot(len~dose,pch=as.numeric(supp))             #it's working
tmp=levels(supp)                                #it's working
legend(locator(1),legend=tmp,pch=1:length(tmp)) #it's working
detach(ToothGrowth)

#Example: GDP vs. CO2 emissions
library(UsingR)
data(emissions)
attach(emissions)
simple.scatterplot(perCapita,CO2)
title("GDP/capita vs. CO2 emissions 1999")
detach(emissions)

#paired scatterplots 
pairs(emissions)

#THE LATTICE PACKAGE (p. 44)
#histograms
library(UsingR)
data("Cars93")
histogram(~ Max.Price | Cylinders, data=Cars93)

#Boxplots
bwplot(~ Max.Price | Cylinders, data = Cars93)

#scatterplots
attach(Cars93)
xyplot(MPG.highway ~ Fuel.tank.capacity | Type)
## plot with a regression line
## first define a regression line drawing function
plot.regression=function(x,y){
  panel.xyplot(x,y)
  panel.abline(lm(y~x))
}
trellis.device(bg="white") #se background to white
xyplot(MPG.highway ~ Fuel.tank.capacity | Type, panel=plot.regression)


#RANDOM DATA (p. 45)
sample(1:6,10,replace = T)

RollDie=function(n) sample(1:6,n,replace=T)
RollDie(5)

#Random number generatos in R - The "r" functions (p.47)
#uniform
runif(1,0,2)  #time at light
runif(5,0,2)  #time at 5 lights
runif(5)      #5 random numbers in [0,1]

x=runif(100)  #get the random numbers
hist(x,probability=TRUE, col=gray(.9),main="uniform on [0,1]")
curve(dunif(x,0,1),add=T)

#normal
rnorm(1,100,16)  # an IQ Score
rnorm(1,mean=280,sd=10) #how long for a baby(10 days early)

x=rnorm(100)
hist(x,probability=TRUE, col=gray(0.9),main="normal mu=0, sigma=1")
curve(dnorm(x),add=T)

#binomial (p.47)
n=1; p=0.5  #set the probability
rbinom(1,n,p) #differente each time
rbinom(10,n,p) #10 differente such numbers

#to generate binomial numbers...
n=10; p=0.5
rbinom(1,n,p)  # 6 successes in 10 trials
rbinom(5,n,p)  # 5 binomial numbers

n=5; p=0.25   #change as appropriate
x=rbinom(100,n,p) #100 random numbers
hist(x,probability = TRUE)
#use points, not curve as dbinom wants integers only for x
xvals=0:n; points(xvals,dbinom(xvals,n,p),type="h",lwd=3)
points(xvals, dbinom(xvals,n,p),type="p",lwd=3)

#exponential
x=rexp(100,1/2500)
hist(x,probability = TRUE, col=gray(0.9),main="exponential mean=2500")
curve(dexp(x,1/2500),add=T)

##Sampling with and without replacement using 'sample'
#Roll a dice
sample(1:6,10,replace = TRUE)
#toss a coin
sample(c("H","T"),10, replace=TRUE)
#pick 6 of 54 (a lottery)
sample(1:54, 6)
#pick a card
cards=paste(rep(c("A",2:10,"J","Q","K"),4),c("H","D","S","C"))
sample(cards,5) # a pair of jacks, no replacement
#roll 2 dice, Even fancier
dice=as.vector(outer(1:6,1:6,paste))
sample(dice,5,replace = TRUE) #replace when rolling dice

## A bootstrap sample (p.49)
data("faithful")  #part of R's base
names(faithful)
eruptions=faithful[['eruptions']] #or attach and detach faithful
sample(eruptions,10,replace = TRUE)
hist(eruptions,breaks = 25)  #the dataset
#the bootstrap sample
hist(sample(eruptions,100,replace = TRUE),breaks = 25)

## d, p and q functions(p.50)
pnorm(0.7)    #standard normal
pnorm(0.7,1,1) # normal mean 1, std 1
pnorm(0.7,lower.tail=F)
qnorm(0.75)

#standardizing, 'scale' and z scores
x=rnorm(5,100,16)
x
z=(x-100)/16
z
pnorm(z)
pnorm(x,100,16)  # enter in parameters

##SIMULATIONS (p.51)
## The central limit theorem
n=10; p=0.25; S=rbinom(1,n,p)
(S-n*p)/sqrt(n*p*(1-p))

n=10; p=0.25; S=rbinom(100,n,p) #generate 100 random numbers
X=(S-n*p)/sqrt(n*p*(1-p))

#for loops
results=numeric(0)
for(i in 1:100){
  S=rbinom(1,n,p)
  results[i]=(S-n*p)/sqrt(n*p*(1-p))
}
hist(results)

#R Basics: Syntax for for
primes=c(2,3,5,7,11)
#loop over indices of primes with this
for(i in 1:5) print(primes[i])
#or better, loop directly
for(i in primes) print(i)

#CLT with normal data (p. 53)
results=c()
mu=0; sigma=1
for(i in 1:200){
  X=rnorm(100,mu,sigma) #generate random data
  results[i]=(mean(X)-mu)/(sigma/sqrt(100))
}

#Normal plots
x=rnorm(100,0,1); qqnorm(x,main='Normal(0,1)'); qqline(x)
x=rnorm(100,10,15); qqnorm(x,main='Normal(10,15)'); qqline(x)
x=rexp(100,1/10); qqnorm(x,main='exponential mu=10'); qqline(x)
x=runif(100,0,1); qqnorm(x,main='unif(0,1)'); qqline(x)

#using simple.sim and functions(p.54)

#not working, we need to know n and p
library(UsingR)
f=function() {
  S=rbinom(1,n,p)
  (S-n*p)/sqrt(n*p*(1-p))
}
x=simple.sim(100,f)
hist(x)
#not working, we need to know n and p

f=function(n=100,p=0.5) {
  S=rbinom(1,n,p)
  (S-n*p)/sqrt(n*p*(1-p))
}
simple.sim(1000,f,100,0.5)

x=rnorm(100)
find.IQR = function(x) {
  five.num=fivenum(x)
  five.num[4]-five.num[2]
}
find.IQR(x)

#Example: A function to sum normal numbers
f=function(n=100,mu=0,sigma=1) {
  nos=rnorm(n,mu,sigma)
  (mean(nos)-mu)/(sigma/sqrt(n))
}
simulations=simple.sim(100,f,100,5,5)
hist(simulations,breaks=10,prob=TRUE)

#Example: CLT with exponential data
f=function(n=100,mu=10) (mean(rexp(n,1/mu))-mu)/(mu/sqrt(n))

xvals=seq(-3,3,0.01) #for density plot
hist(simple.sim(100,f,1,10),probability=TRUE,main="n=1",col=gray(0.95))
points(xvals,dnorm(xvals,0,1),type="l") #plot normal curve

##EXPLORATORY DATA ANALYSIS (p. 58)
#install.packages("evaluate")
library(UsingR)
data(homedata)  #from UsingR package
attach(homedata)
hist(y1970)
hist(y2000)
detach(homedata)  #clean up

attach(homedata)
simple.eda(y1970)
simple.eda(y2000)
detach(homedata)

data("exec.pay")
simple.eda(exec.pay)
log.exec.pay=log(exec.pay[exec.pay>0])/log(10)
simple.eda(log.exec.pay)

#Example: Taxi time at EWR (p.60)
data(ewr)
names(ewr)
airnames=names(ewr)
ewr.actual=ewr[,3:10]
boxplot(ewr.actual)

par(mfrow=c(2,4)) # 2 rows and 4 columns
attach(ewr)
for(i in 3:10) boxplot(ewr[,i] ~ as.factor(inorout),main=airnames[i])
detach(ewr)
par(mfrow=c(1,1))

#Example: Symmetric or skewed (p.62)  #NOT WORKING: n is missing
## symeetirc: shor, regular then long
X=runif(100); boxplot(X,horizontal=T,bty=n)
X=rnorm(100); boxplot(X,horizontal=T,bty=n)
X=rt(100,2);boxplot(X, horizontal=T,bty=n)
##skewed: shor, regular then long
#triangle distribution
X=sample(1:6,100,p=7-(1:6),replace=T);boxplot(X,horizontal=T,bty=n)
X=abs(rnorm(200)); boxplot(X, horizontal=T,bty=n)
X=rexp(200); boxplot(X,horizontal=T, bty=n)
#NOT WORKING: n is missing

#CONFIDENCE INTERVAL ESTIMATION (p. 63)
alpha=c(0.2,0.1,0.05,0.001)
zstar=qnorm(1-alpha/2)
zstar
2*(1-pnorm(zstar))

m=50; n=20; p=0.5 #toss 20 coins 50 times
phat=rbinom(m,n,p)/n  #divide by n for proportions
SE=sqrt(phat*(1-phat)/n) #compute SE
alpha=0.10; zstar=qnorm(1-alpha/2)
matplot(rbind(phat-zstar*SE, phat+zstar*SE), rbind(1:m,1:m),type="l",lty=1)
abline(v=p)

#Proportion test (P. 65)
prop.test(42,100)
prop.test(42,100,conf.level=0.90)

#the z-test (p.66)
#define a function
simple.z.test=function(x,sigma,conf.level=0.95){
  n=length(x);xbar=mean(x)
  alpha=1-conf.level
  zstar=qnorm(1-alpha/2)
  SE=sigma/sqrt(n)
  xbar+c(-zstar*SE,zstar*SE)

}
simple.z.test(x,1.5) #not working, x is missing

#the t-test (p.67)
