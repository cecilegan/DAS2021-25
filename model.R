library(tidyverse)
library(moderndive)
library(pastecs)
library(skimr)
library(kableExtra)
library(gridExtra)
library(dplyr)
library(knitr)
library(MASS)
library(GGally)

full_model <- model1 <- glm(price ~ depth+height+width+volume, data = ikea, 
                            family = binomial(link = "logit"))

summary(full_model)

step_model1 = stepAIC(full_model, direction = "both", k = 2)

summary(step_model1)