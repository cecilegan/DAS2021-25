model1 <- glm(price ~ depth+height+width, data = ikea, 
             family = binomial(link = "logit"))

model1 %>%
  summary()


model2 <- glm(price ~ volume, data = ikea, 
             family = binomial(link = "logit"))

model2 %>%
  summary()