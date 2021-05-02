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
    