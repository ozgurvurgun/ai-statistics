veri_seti <- airquality
#ozet bilgi verir. (betimsel istatistik)
#summary(veri_seti)

#veri seti içerisinde ki örnek satırlardan gösterim yapar.
#head(veri_seti)
#head(veri_seti,10)

#Uyuglama: Coklu dogrusal regresyon modeli
input <- airquality[1:50,c("Ozone","Wind","Temp")]
model <- lm(Ozone ~ Wind + Temp, data = input)
cat("Regression Model: \n")
print(model)
png(file="multiple_regression_model.png")
plot(model)
dev.off()
