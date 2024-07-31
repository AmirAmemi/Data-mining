#### Installe + charge le package DAAG
install.packages("DAAG")
library(DAAG)

### Charge les données 
data(houseprices)

### Aperçu des premières lignes
head(houseprices)

# y = b0 + b1*x1
# Variable à expliquer : y = prix de vente de la maison
# Une variable explicative : x1 = Surface au sol de la maison

pricereg<-lm(sale.price ~ area, data=houseprices)

# plot : "vraies" valeurs et droite de regression
plot(sale.price ~ area, data=houseprices)
abline(pricereg, col = "red") 

# Variables explicatives : x1 = Surface au sol de la maison, x2 = nombre de chambres
pricereg2<-lm(sale.price ~ area + bedrooms , data=houseprices)

#### Regression output
summary(pricereg2)

#### Extraction des coefficients
coef(pricereg2)

#### Intervalle de confiance (à 95%) des coefficients
confint(pricereg2)

#### Extraction des valeurs prédites
fitted(pricereg2)

#### Extraction des résidus
resid(pricereg2)

#### résidus
res<-resid(pricereg2)
plot(res,main="Résidus")
abline(h=0,col="red")

### résidus vs. area
plot(houseprices$area,res,main="Résidus")
abline(h=0,col="red")

### résidus vs price
plot(houseprices$sale.price,res,main="Résidus")
abline(h=0,col="red")

# Extraction des valeurs prédites
fit<-fitted(pricereg2)

## residus vs. valeurs prédites
plot(fit,res,main="Residuals vs. fitted")
abline(h=0,col="red")

#### Prédiction du prix de la maison en fonction de sa superficie et de son nombre de chambres
predict(pricereg2, newdata=data.frame(area=800,bedrooms=2), se.fit=TRUE, interval = "prediction", level = 0.99)

