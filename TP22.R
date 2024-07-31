poids <- c(13.5,20.7,30.5,38.1,41.5)
View(poids)
length(poids)
sort(poids)
sum(poids)
min(poids)
max(poids)
prod(poids)
poids_kg <- poids/1000
poids_kg[2]
poids_kg[c(1,3,5)]
mean(poids_kg)
median(poids_kg)
sd(poids_kg)
var(poids_kg)
vec <- c(1,2,3,4,5)
vec
vec <- seq(1,5,1)
vec
rev(vec)
rep(vec,3)
sum(vec)
length(vec)
S <-seq(1,5,1)
names(S) <- c("sem1","sem2","sem3","sem4","sem5")
n <- seq(1,10,1)
som <- 0
for (i in n){ 
	som <- som + (i-mean(n))**2
}
som/length(n)
cbind(seq(1,5),seq(2,10,2))
rbind(seq(1,5),seq(2,10,2))
rbind(seq(1,4),seq(5,8),seq(9,12),seq(13,16),seq(17,20))
matrix(seq(1,20),4,5)	
sexe <-c("h","f","f","f","f")
poids <-c(60,57,51,55,50)
taille <- c(170,169,172,174,168)
t <- cbind(sexe,poids,taille)
T <- read.table(file.choose())
View(T)
T[c(1,3)]

data <- T[T$sexe == "f", "taille"]
data
for (i in seq(1, 65)) {
  if (T[i, $sexe] == "f") {
    T[i, $taille]
  }}



