#STA545 HW3

#initialize

library(MASS)
?Boston
data("Boston")
dim(Boston)
head(Boston)

#1A
SRzn<-lm(crim ~ zn, data=Boston)
summary(SRzn)
SRindus<-lm(crim ~ indus, data=Boston)
summary(SRindus)
SRchas<-lm(crim ~ chas, data=Boston)
summary(SRchas)
SRnox<-lm(crim ~ nox, data=Boston)
summary(SRnox)
SRrm<-lm(crim ~ rm, data=Boston)
summary(SRrm)
SRage<-lm(crim ~ age, data=Boston)
summary(SRage)
SRdis<-lm(crim ~ dis, data=Boston)
summary(SRdis)
SRrad<-lm(crim ~ rad, data=Boston)
summary(SRrad)
SRtax<-lm(crim ~ tax, data=Boston)
summary(SRtax)
SRptratio<-lm(crim ~ ptratio, data=Boston)
summary(SRptratio)
SRblack<-lm(crim ~ black, data=Boston)
summary(SRblack)
SRlstat<-lm(crim ~ lstat, data=Boston)
summary(SRlstat)
SRmedv<-lm(crim ~ medv, data=Boston)
summary(SRmedv)
#significant relationship between crim and zn p<0.001 where Rsq=-0.739 +/- 0.016, meaning a .739 unit decrease for every unit increase in crim
#significant relationship between crim and indus p<0.001 where Rsq=-0.510 +/- 0.051, meaning a .51 unit increase for every unit increase in crim
#insignificant relationship between crim and chas p>0.1 where Rsq=-1.893 +/- 1.506
#significant relationship between crim and nox p<0.001 where Rsq=31.249 +/- 3.000, meaning a 31.249 unit increase for every unit increase in crim
#significant relationship between crim and rm p<0.001 where Rsq=-2.684 +/- 0.532, meaning a 2.684 unit decrease for every unit increase in crim
#significant relationship between crim and age p<0.001 where Rsq=0.108 +/- 0.012, meaning a 0.108 unit increase for every unit increase in crim
#significant relationship between crim and dis p<0.001 where Rsq=--1.551 +/- 0.1683, meaning a 1.551 unit decrease for every unit increase in crim
#significant relationship between crim and rad p<0.001 where Rsq=0.618 +/- 0.034, meaning a .618 unit increase for every unit increase in crim
#significant relationship between crim and tax p<0.001 where Rsq=0.029 +/- 0.002, meaning a .029 unit increase for every unit increase in crim
#significant relationship between crim and pratio p<0.001 where Rsq=1.152 +/- 0.169, meaning a 1.152 unit increase for every unit increase in crim
#significant relationship between crim and black p<0.001 where Rsq=-0.036 +/- 0.003, meaning a .036 unit decrease for every unit increase in crim
#significant relationship between crim and lstat p<0.001 where Rsq=0.549 +/- 0.048, meaning a .549 unit increase for every unit increase in crim
#significant relationship between crim and medv p<0.001 where Rsq=-0.363 +/- 0.038, meaning a .363 unit decrease for every unit increase in crim

#1B
MLR<-lm(crim~zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat+medv,data=Boston)
summary(MLR)
#There is no linear association between crim and indus, chas, rm, age, tax, ptratio: reject Null
#There are weak linear associations between crim and zn, nox, black, lstat: accept Null
#There are strong linear associations between crim and dis, rad, medv: accept Null

#1C
uniCoef<-c(summary(SRzn)$coefficients[2,4],summary(SRindus)$coefficients[2,4],summary(SRchas)$coefficients[2,4],summary(SRnox)$coefficients[2,4],summary(SRrm)$coefficients[2,4],summary(SRage)$coefficients[2,4],summary(SRdis)$coefficients[2,4],summary(SRrad)$coefficients[2,4],summary(SRtax)$coefficients[2,4],summary(SRptratio)$coefficients[2,4],summary(SRblack)$coefficients[2,4],summary(SRlstat)$coefficients[2,4],summary(SRmedv)$coefficients[2,4])
uniCoef
multiCoef<-summary(MLR)$coefficients[2:14,4]
#did not quite understand the instruction in the question
plot(x=uniCoef,y=multiCoef)

#1D

#2A
#It would depend on the number of predictors, likely backward word perform better. Forward is inadvisable with smaller number of predictors. That said ultimately the smaller the K value the smaller the train error, however small k values are computationally cumbersome with large data sets.
#2B
#The opposite is true in this instance, assuming a large number of predictors forward would have the lowest test error
#2Ci T
#2Cii T
#2Ciii F
#2Civ F
#2Cv T
