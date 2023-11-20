ds <- read.csv("movies.csv")

#1
str(ds)

#2
colnames(ds)

#3
colnames(ds)[13]<-"Country"

#4
ds <- ds[complete.cases(ds),]
cleanRatings <- ds$Rating[!is.na(ds$Rating)]
sum(cleanRatings)/length(cleanRatings)

#5
ds$Runtime <- as.numeric(ds$Runtime) 
ds$Runtime[which.max(ds$Runtime)]
ds$RuntimeInHours <- ds$Runtime / 60.0

#6
ds$Title[which.max(ds$Runtime)]

#7
table(ds$Year)

#8
sort(unique(ds$Filming_location))

#9
ds[grep("Robert De Niro",ds)]

#10
length(ds$Stars[grep("Robert De Niro",ds$Stars)])

#11
mean(ds$Rating[grep("Robert De Niro", ds$Stars)])

#12
length(ds$Rating[which(ds$Rating>= 5 & ds$Rating <= 7)])

#13.
barplot(table(ds$Certificate))

#14
ds<- ds[-which(ds$Certificate == "PG-13"),]
