install.packages('MPV')         # installing package with datasets from textbook
library(MPV)                    # loading the library of datasets

########################### Problem 5.5 PART A ####################################################

data(p5.5)                      # name of dataset of problem 5.5 of textbook

defects.lm <- lm(defects~weeks, data = p5.5)  # linear model 
plot(defects.lm, which=1)       # which = 1 shows the residuals vs fitted plot

summary(defects.lm)
fit<-aov(defects~weeks, data=p5.5)


########################### Problem 5.5 PART A ####################################################
# Trying out various transformations 

defects.lm1 <- lm(defects**2~weeks, data = p5.5)  # linear model with y^2
plot(defects.lm1, which=1)       # nonlinear


defects.lm2 <- lm(defects~weeks**2, data = p5.5)  # linear model with x^2
plot(defects.lm2, which=1)       # nonlinear


defects.lm3 <- lm(defects**2~weeks**2, data = p5.5)  # linear model with y^2, x^2
plot(defects.lm3, which=1)       # nonlinear


defects.lm4 <- lm(log(defects)~weeks, data = p5.5)  # linear model with log(y)
plot(defects.lm4, which=1)       # looks alright


defects.lm5 <- lm(defects~log(weeks), data = p5.5)  # linear model with log(x)
plot(defects.lm5, which=1)       # nonlinear


defects.lm6 <- lm(log(defects)~log(weeks), data = p5.5)  # linear model with log(x), log(y) 
plot(defects.lm6, which=1)       # nonlinear

