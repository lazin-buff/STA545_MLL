---
title: "STA545 HW1"
author: "Marko Lazin"
date: "9/9/2020"
output: pdf_document
---

install.packages("knitr")
library(knitr)
install.packages("xfun")
library(xfun)
knitr::opts_chunk$set(echo = TRUE)

## R Markdown

#1(a)
#1(b)
#1(c)
#1(d)
#1(e)

#This was my first attempt at using RMarkdown. There were several discontinuity 
#in packages (MacTex) and the version of R I have downloaded on my computer. 
#Additionally when running both the template provided on UB Learns and by 
#creating my own template via the RMarkdown cheat-sheet the following error was 
#generated for the first line of script:

#Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), 
#versionCheck = vI[[j]]) : 
#  namespace ‘xfun’ 0.13 is already loaded, but >= 0.15 is required
  
#When the "Knit" button was pressed the following error was generated in the 
#RMarkdown Console:

#Calls: :: ... namespaceImportFrom -> asNamespace -> loadNamespace
#Execution halted

#install.packages("MacTex")
#library(MacTex)
install.packages("ISLR")
library(ISLR)
summary(Wage)

knitr::stitch('STA545_HW1.r')

#2(a) Scenario is regression because the task is to look for the gravity of
#variables that affect CEO salary. For it to be classification there would need
#minimally be a distinction between categories of salary (i.e. high salary).
#n=500
#p=3

#2(b) Scenario is classification along distinction of success/ failure 
#of product.
#n=20
#p=13

#2(c) Scebario is Regression because there is no linear distinction between
#outcomes, simply looking at predicting % change as dependent variable.
#n=weekly data from 2012 (~52 weeks)
#p=3

#3(a)1 pedestrian fatality in traffic accidents. response: fatal / nonfatal
#predictors: vehicle speed limit, presence of crosswalk, time of day
#3(a)2 elementary school closing from weather. response closed / open
#predictors: temperature, precipitation, wind speed
#3(a)3 university decision to move classes online. response: online / in-person
#predictors: disease contraction rate, infected population, legal requisites

#3(b)1 student final exam grade. response: grade. predictors: participation,
#mean HW grade, #mean lab grade
#3(b)2 length of flight delay. response: length of delay in minutes.
#predictors: wind speed, precipitation, previous airline / airport delay rate
#3(b)3 patient blood pressure. response: blood pressure. predictors: age,
#frequency of intense physical activity, perceived stress, BMI

#3(c)1 organization position functions (i.e. IT, HR, Sales, Marketing, Analyst)
#3(c)2 socio-economic class (i.e. bottom 33% income, middle 33% income, top 33% 
#income, top 1% income)
#3(c)3 paint general colors as a function of ingredients (i.e. Red paint 
#ingredients, Blue paint ingredients, Yellow paint ingredients)
