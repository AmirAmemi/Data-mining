f = file.choose()
ventes<- read.csv(f)
View(ventes)
summary(ventes)

reg_ventes=lm(Sales~ TV+Radio+Newspaper,data=ventes)
#affichage des résultats dont le R²
summary(reg_ventes)


#calcul du RMSE

predictions = predict(reg_ventes,sales)

rmse = mean((sales$sales - predictions)^2)
print(rmse)

#affichage des graphiques
plot(reg_ventes)
