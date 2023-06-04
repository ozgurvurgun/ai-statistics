titanic <- read.csv("datasets/titanic/train.csv", na.strings = "")
View(titanic)
class(titanic)

library(Amelia)

#kayip haritasini cizer
missmap(titanic,col = c("black", "grey"))
#kabin alaninda bir cok NA degeri bulunuyor

library(dplyr)
data.frame = select(titanic, Survived, Pclass, Age, Sex, SibSp, Parch)

#NA verilerin bulundugu satirlarin kaldirilmasi
data.frame = na.omit(data.frame)

#Verilerin Kontrol Edilmesi
str(data.frame)

data.frame$Survived = factor(data.frame$Survived)
str(data.frame)

data.frame$Pclass = factor(data.frame$Pclass, order = TRUE, levels = c(3,2,1))
str(data.frame)

#kaldigi sinifa gore hayatta kalanlar
library(ggplot2)
ggplot(data.frame) + geom_bar(mapping = aes(x=Sex, fill = Survived)) + facet_grid(~Pclass)





