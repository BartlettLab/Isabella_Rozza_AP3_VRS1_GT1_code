#Comparing genotypes without position

#Opening the stamen length file and setting the appropriate data as factors
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Stamen Length Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between stamen length and genotype
lm(data=Arabidopsis.df,Stamen_Length ~ genotype)
summary(lm(data=Arabidopsis.df,Stamen_Length ~ genotype))

#Opening the stamen number file and setting the appropriate data as factors
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Stamen Number Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between stamen number and genotype, putting aside other factors for now
lm(data=Arabidopsis.df,Stamen_Number ~ genotype)
summary(lm(data=Arabidopsis.df,Stamen_Number ~ genotype))

#Opening the petal length file 
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Petal Length Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between petal length and genotype, putting aside other factors for now
lm(data=Arabidopsis.df,Petal_Length ~ genotype)
summary(lm(data=Arabidopsis.df,Petal_Length ~ genotype))

#Opening the petal width file
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Petal Width Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between petal width and genotype, putting aside other factors for now
lm(data=Arabidopsis.df,Petal_Width ~ genotype)
summary(lm(data=Arabidopsis.df,Petal_Width ~ genotype))

#Creating box plots for each data set and changing the order I want the data to appear in it
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("GT1","YFP","VRS1"))
boxplot(Stamen_Length ~ genotype, data=Arabidopsis.df)
boxplot(Stamen_Number ~ genotype, data=Arabidopsis.df)
boxplot(Petal_Length ~ genotype, data=Arabidopsis.df)
boxplot(Petal_Width ~ genotype, data=Arabidopsis.df)

#Comparing genotypes with position

#Opening the stamen length file and setting the appropriate data as factors
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Stamen Length Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between stamen length, genotype and position
lm(data=Arabidopsis.df,Stamen_Length ~ genotype+position)
summary(lm(data=Arabidopsis.df,Stamen_Length ~ genotype+position))

#Opening the stamen number file and setting the appropriate data as factors
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Stamen Number Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between stamen number, genotype and position
lm(data=Arabidopsis.df,Stamen_Number ~ genotype+position)
summary(lm(data=Arabidopsis.df,Stamen_Number ~ genotype+position))

#Opening the petal length file 
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Petal Length Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between petal length, genotype and position
lm(data=Arabidopsis.df,Petal_Length ~ genotype+position)
summary(lm(data=Arabidopsis.df,Petal_Length ~ genotype+position))

#Opening the petal width file
Arabidopsis.df <- read.csv(file="Arabidopsis Stamen & Petal Data - Petal Width Data for R.csv",header=T)
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("YFP","GT1","VRS1"))

#Seeing the association between petal width, genotype and position
lm(data=Arabidopsis.df,Petal_Width ~ genotype+position)
summary(lm(data=Arabidopsis.df,Petal_Width ~ genotype+position))

#Creating box plots for each data set and changing the order I want the data to appear in it
Arabidopsis.df$genotype <- factor(Arabidopsis.df$genotype,levels=c("GT1","YFP","VRS1"))
boxplot(Stamen_Length ~ genotype+position, data=Arabidopsis.df)
boxplot(Stamen_Number ~ genotype+position, data=Arabidopsis.df)
boxplot(Petal_Length ~ genotype+position, data=Arabidopsis.df)
boxplot(Petal_Width ~ genotype+position, data=Arabidopsis.df)
