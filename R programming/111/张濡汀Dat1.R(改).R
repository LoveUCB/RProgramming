#@Author:Ruting Zhang
#@Email:3446789086@qq.com

setwd("C:/Users/Cathy/Desktop/生物信息R语言/Lab1 data/group")

GroupA<-read.table("groupA.txt",header=F,col.names="Value")
GroupB<-read.table("groupB.txt",header=F,col.names="Value")
GroupC<-read.table("groupC.txt",header=F,col.names="Value")
GroupD<-read.table("groupD.txt",header=F,col.names="Value")

dim(GroupA)
dim(GroupB)
dim(GroupC)
dim(GroupD)

Group<-c(rep("groupA",15),rep("groupB",13),rep("groupC",25),rep("groupD",39))

Dat<-rbind(GroupA,GroupB,GroupC,GroupD)

#法一
Dat1<-data.frame(Value=Dat,Group=Group)
head(Dat1)
#Value  Group
#1    40 groupA
#2    40 groupA
#3    50 groupA
#4    60 groupA
#5    65 groupA
#6    72 groupA

#法二
Dat1<-cbind(Dat,Group)
head(Dat1)
#Value  Group
#1    40 groupA
#2    40 groupA
#3    50 groupA
#4    60 groupA
#5    65 groupA
#6    72 groupA