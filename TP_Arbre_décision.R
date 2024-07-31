# Installation et chargement du package rpart
install.packages("rpart", dep=TRUE)
library(rpart)

# Importation des données kyphosis et création d'un nouveau jeu de données inco
data(kyphosis)
View(data)
inco = data.frame(c(60,30,90), c(1,2,3), c(5,12,16))
View(inco)
colnames(inco) = c("Age", "Number", "Start")
View(colnames(inco))
# Création d'un facteur pour la variable Kyphosis de la base de données kyphosis
kyphosis$Kyphosis <- as.factor(kyphosis$Kyphosis)

# Construction de l'arbre de décision initial avec validation croisée
arbre <- rpart(Kyphosis ~ ., method = "class", minsplit = 20, xval = 81, data = kyphosis)
plotcp(arbre)
# Affichage de l'arbre initial
plot(arbre, uniform=TRUE, margin=0.1, main="Arbre de décision")

# Ajout des noms de variables aux nœuds de l'arbre initial
plot(arbre, uniform=TRUE, margin=0.1, main="Arbre de décision")
text(arbre, fancy=TRUE, use.n=TRUE, pretty=0, all=TRUE)

# Construction de l'arbre de décision élagué avec une taille de 2 feuilles terminales et une complexité de 0.059
arbre2 <- rpart(Kyphosis ~ ., cp = 0.059, data = kyphosis)
arbre2
# Affichage de la courbe d'erreur de validation croisée en fonction de la complexité de l'arbre
plotcp(arbre2)

# Affichage de l'arbre élagué
plot(arbre2, uniform=TRUE, margin=0.1, main="Arbre de décision élagué")
text(arbre2, fancy=TRUE, use.n=TRUE, pretty=0, all=TRUE)

# Calcul du taux de mauvais classement en apprentissage de l'arbre élagué
err_rate <- sum((predict(arbre2, kyphosis, type="class") != kyphosis$Kyphosis))/nrow(kyphosis)
err_rate * 100