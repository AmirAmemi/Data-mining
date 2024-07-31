age=rep(seq(10,14.5,by=0.5),3)
sexe=rep(c("M","F"),c(16,14))
table=data.frame(age,sexe)
table
dim(table)
length(table)
str(table)#affiche l'informaton sur les elemnets de tableau
head(table,10)#affiche les 10 premiers colonnes de tableau (sans 10 par defaut affiche 6)
View(table)#affiche un tableau sous forme view
id=paste("id",c(1:30))#attrubier des identifiants
row.names(table)<-id
View(table)
row.names(table)<-NULL#pour effacer les identifiants
View(table)
#effacer les nomes de colonnes:
nomatt=names(table)
names(table)=NULL
View(table)
#pour reajouter les noms de colonnes:
names(table)=nomatt
View(table)
summary(table)
#pour modifier le nomes de l'objet:
names(table)[1]<-"ag"
names(table)[2]<-"se"
names(table)[table$ag=="a"]="a"
View(table)
names(table)[c(2:1)]<-c("Ag","Se")
View(table)
#pour aficcher une ligne et colonne:
table[3,]
table[,1]
table[3,1]
table[20:25,1:2]#en utlise ca pour extraire  une echantillon
table[c(20,25),c(1,2)]
table2<-table[1:20,-1]#supprimer de colonnne dans la phase de reduction de dimensions
table2
table3<-table[-20,-1]
table3
#extraction en fonction des criters subset:
table4<-subset(table,Ag=="F")table5 =subset(table,Ag>10)
#transformer 
#pour modifier le nomes de l'objet:
table6 = transform(table,ageNew= age*1.5)
table6
table7= transform (table,ageNew=ifelse(age<10,1,0))
table7
#importer les données
obj <- read.table(file.choose())
View(obj)	
obj=read.csv("https://gist.githubusercontent.com/Thanatoz-1/9e7fdfb8189f0cdf5d73a494e4a6392a/raw/aaecbd14aeaa468cd749528f291aa8a30c2ea09e/iris_dataset.csv")
View(obj)
obj <- read.csv("Iris.csv")