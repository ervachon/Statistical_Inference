q1

a <- data.frame(c(140,138,150,148,135),c(132,135,151,146,130))
colnames(a) <- c('a','b')
aa <- mutate(a; gain = b-a)
var.test(aa$a,aa$b)
--> p> 0.05 => dependante

t.test(aa$a,aa$b, var.equal=TRUE, paired=TRUE)
--> p-value = 0.08652

q2
n <- 9
mu <- 1100
sigma <- 30
quantile = 0.975 # is 95% with 2.5% on both sides of the range
confidenceInterval = ?? + c(-1, 1) * qt(quantile, df=n-1) * ?? / sqrt(n)
confidenceInterval

q3
n <- 4
x <- 3
binom.test(x=x, n=n, alt="greater")

q4
n <- 1787
x <- 10

binom.test(x=x, n=n, p=1/100,alt="less")

q5
18 obeses
9 diet / 9 placebo
moyenne -3 de diff diet
moyenne +1 de diff placebo
ecart typr 1.5 diet
ecart type 1.8 placebo

n1 <- n2 <- 9
x1 <- -3  ##treated
x2 <- 1  ##placebo
s1 <- 1.5  ##treated
s2 <- 1.8  ##placebo
spsq <- ( (n1 - 1) * s1^2 + (n2 - 1) * s2^2) / (n1 + n2 - 2)
t=(x1-x2)/(spsq*sqrt(1/n1 + 1/n2))
2*pt(t,n1+n2-2)
