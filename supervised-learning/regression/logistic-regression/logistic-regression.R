#summary(mtcars)
#bastan 10 veri
#head(mtcars,10)
#sondan 10 veri
#tail(mtcars,10)

model <- glm(formula = vs ~ wt, family = binomial(),data = mtcars)

x <- seq(min(mtcars$wt),max(mtcars$wt),0.01)

y <- predict(model,list(wt=x),type = "response")
print(model)

png(file="log-reg.png")
plot(mtcars$wt,mtcars$vs,pch=16,xlab = "weight",ylab = "vs")
lines(x,y)
dev.off()

