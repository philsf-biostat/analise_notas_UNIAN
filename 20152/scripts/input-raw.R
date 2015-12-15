# ## Usar o XLSX diretamente, ao invés  do TSV?
# Civil4BM2<-read.xls("Notas EDO 2015.2.xlsx",2,na.strings=c("A"))
# Civil4BM2<-read.xlsx("Notas EDO 2015.2.xlsx",2)

#### Planilhas originais ####
Civil4BM<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Civil4BM.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Mec4AM<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Mec4AM.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Civil4AN<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Civil4AN.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Civil4BN<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Civil4BN.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Prod4AM<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Prod4AM.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Prod3AM<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Prod3AM.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Elet3AM<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Elet3AM.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
ensalada<-rbind(Prod3AM,Elet3AM)
Civil4CN<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Civil4CN.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Mec4BN<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Mec4BN.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Prod4BN<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Prod4BN.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Prod4CN<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Prod4CN.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))
Civil3AM<-read.table("../dados_nao_anonimos/Notas EDO 2015.2 - Civil3AM.tsv", sep="\t", dec=",",header=T,na.strings=c("A"))

#### Data frame de trabalho ####
tudo<-rbind(Civil4BM,Mec4AM,Civil4AN,Civil4BN,Prod4AM,Prod3AM,Elet3AM,Civil4CN,Mec4BN,Prod4BN,Prod4CN,Civil3AM)

#### Atas ####
tudo$Ata.P1<-factor(tudo$Ata.P1,labels = c("N","S"))
tudo$Ata.P2<-factor(tudo$Ata.P2,labels = c("N","S"))

#### Dia da prova ####

## Dia da P1 ####
tudo[tudo$Turma=="Civil4BM","Tempo1"]<-0
tudo[tudo$Turma=="Mec4AM","Tempo1"]<-0.5
tudo[tudo$Turma=="Civil4AN","Tempo1"]<-1
tudo[tudo$Turma=="Civil4BN","Tempo1"]<-1.5
tudo[tudo$Turma=="Prod4AM","Tempo1"]<-2
tudo[tudo$Turma=="Prod3AM","Tempo1"]<-2.5
tudo[tudo$Turma=="Elet3AM","Tempo1"]<-2.5
tudo[tudo$Turma=="Civil4CN","Tempo1"]<-3
tudo[tudo$Turma=="Mec4BN","Tempo1"]<-3.5
tudo[tudo$Turma=="Prod4BN","Tempo1"]<-4
tudo[tudo$Turma=="Prod4CN","Tempo1"]<-4.5
tudo[tudo$Turma=="Civil3AM","Tempo1"]<-5

## Dia da P2 ####
tudo[tudo$Turma=="Prod4AM","Tempo2"]<-0
tudo[tudo$Turma=="Prod3AM","Tempo2"]<-0.5
tudo[tudo$Turma=="Elet3AM","Tempo2"]<-0.5
tudo[tudo$Turma=="Civil4CN","Tempo2"]<-1
tudo[tudo$Turma=="Mec4BN","Tempo2"]<-1.5
tudo[tudo$Turma=="Prod4BN","Tempo2"]<-2
tudo[tudo$Turma=="Prod4CN","Tempo2"]<-2.5
tudo[tudo$Turma=="Civil3AM","Tempo2"]<-3
tudo[tudo$Turma=="Civil4BM","Tempo2"]<-4
tudo[tudo$Turma=="Mec4AM","Tempo2"]<-4.5
tudo[tudo$Turma=="Civil4AN","Tempo2"]<-5
tudo[tudo$Turma=="Civil4BN","Tempo2"]<-5.5

#### Abandono ####
## (fizeram P1 e não fizeram P2)
tudo[is.na(tudo$P1)==F & is.na(tudo$P2)==T,"Abandono"]<-1
tudo[is.na(tudo$P1)==F & is.na(tudo$P2)==F,"Abandono"]<-0
tudo$Abandono<-factor(tudo$Abandono,labels=c("N","S"))

#### Existência ####
tudo[,"Existente"]<-1
tudo[is.na(tudo$P1)==T & is.na(tudo$P2)==T,"Existente"]<-0
tudo$Existente<-factor(tudo$Existente,labels=c("N","S"))

#### Casos completos ####
tudo.cc<-tudo[complete.cases(tudo),] # Casos completos

#### Salvando o dataset anonimizado ####
write.table(tudo[,-c(1,2)],"../dataset/notas-20152.dat")

#### Rascunhos obsoletos ####

## Aplicação da P1
# tudo[,"Tempo1"]<-0
# tudo[tudo$Turma=="Civil4BM",]$Tempo1<-0
# tudo[tudo$Turma=="Mec4AM",]$Tempo1<-0.5
# tudo[tudo$Turma=="Civil4AN",]$Tempo1<-1
# tudo[tudo$Turma=="Civil4BN",]$Tempo1<-1.5
# tudo[tudo$Turma=="Prod4AM",]$Tempo1<-2
# tudo[tudo$Turma=="Prod3AM",]$Tempo1<-2.5
# tudo[tudo$Turma=="Elet3AM",]$Tempo1<-2.5
# tudo[tudo$Turma=="Civil4CN",]$Tempo1<-3
# tudo[tudo$Turma=="Mec4BN",]$Tempo1<-3.5
# tudo[tudo$Turma=="Prod4BN",]$Tempo1<-4
# tudo[tudo$Turma=="Prod4CN",]$Tempo1<-4.5
# tudo[tudo$Turma=="Civil3AM",]$Tempo1<-5

## Aplicação da P2
# tudo[,"Tempo2"]<-0
# tudo[tudo$Turma=="Prod4AM",]$Tempo2<-0
# tudo[tudo$Turma=="Prod3AM",]$Tempo2<-0.5
# tudo[tudo$Turma=="Elet3AM",]$Tempo2<-0.5
# tudo[tudo$Turma=="Civil4CN",]$Tempo2<-1
# tudo[tudo$Turma=="Mec4BN",]$Tempo2<-1.5
# tudo[tudo$Turma=="Prod4BN",]$Tempo2<-2
# tudo[tudo$Turma=="Prod4CN",]$Tempo2<-2.5
# tudo[tudo$Turma=="Civil3AM",]$Tempo2<-3
# tudo[tudo$Turma=="Civil4BM",]$Tempo2<-4
# tudo[tudo$Turma=="Mec4AM",]$Tempo2<-4.5
# tudo[tudo$Turma=="Civil4AN",]$Tempo2<-5
# tudo[tudo$Turma=="Civil4BN",]$Tempo2<-5.5

# tudo[tudo$Turno=="2M",]$Tempo<-0
# tudo[tudo$Turno=="2N",]$Tempo<-1
# tudo[tudo$Turno=="4M",]$Tempo<-2
# tudo[tudo$Turno=="4N",]$Tempo<-3
# tudo[tudo$Turno=="5N",]$Tempo<-4
# tudo[tudo$Turno=="6M",]$Tempo<-5

# # Incluindo o Turno
# Civil4BM[,"Turno"]<-as.factor("2M")
# Mec4AM[,"Turno"]<-as.factor("2M")
# Civil4AN[,"Turno"]<-as.factor("2N")
# Civil4AN[,"Turno"]<-as.factor("2N")
# Civil4BN[,"Turno"]<-as.factor("2N")
# Prod4AM[,"Turno"]<-as.factor("4M")
# Prod3AM[,"Turno"]<-as.factor("4M")
# Elet3AM[,"Turno"]<-as.factor("4M")
# Civil4CN[,"Turno"]<-as.factor("4N")
# Mec4BN[,"Turno"]<-as.factor("4N")
# Prod4BN[,"Turno"]<-as.factor("5N")
# Prod4CN[,"Turno"]<-as.factor("5N")
# Civil3AM[,"Turno"]<-as.factor("6M")
# 
# # Incluindo a Turma
# Civil4BM[,"Turma"]<-as.factor("Civil4BM")
# Mec4AM[,"Turma"]<-as.factor("Mec4AM")
# Civil4AN[,"Turma"]<-as.factor("Civil4AN")
# Civil4BN[,"Turma"]<-as.factor("Civil4BN")
# Prod4AM[,"Turma"]<-as.factor("Prod4AM")
# Prod3AM[,"Turma"]<-as.factor("Prod3AM")
# Elet3AM[,"Turma"]<-as.factor("Elet3AM")
# Civil4CN[,"Turma"]<-as.factor("Civil4CN")
# Mec4BN[,"Turma"]<-as.factor("Mec4BN")
# Prod4BN[,"Turma"]<-as.factor("Prod4BN")
# Prod4CN[,"Turma"]<-as.factor("Prod4CN")
# Civil3AM[,"Turma"]<-as.factor("Civil3AM")