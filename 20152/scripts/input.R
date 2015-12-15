#### Input ####

# # Abrindo o dataset completo (não anonimizado)
# tudo <- read.table("../dados_nao_anonimos/notas-20152-nomes.dat")

# Abrindo o dataset (previamente anonimizado)
tudo <- read.table("../dataset/notas-20152.dat")

#### Backup ####
## Vamos modificar o data frame
tudo.backup <- tudo

#### Ajuste P1 ####
## Turmas de segunda feira tiveram prova valendo 8, com 2 pontos somados a quem teve nota >0
## Retirar os 2 pontos extras, e normalizar de 8 para 10
segunda <- tudo[(tudo$Turno=="2M" | tudo$Turno == "2N") & tudo$Trabalho.1>0,]
segunda$P1 <- (segunda$P1-2)*(10/8)

rm(segunda)

#### Ajuste P2 ####
# P2 valia 8, enquanto a P1 valia 10. Ajuste linear: *(10/8)
tudo$P2 <- tudo$P2*(10/8)

#### Casos completos ####
tudo.cc<-tudo[complete.cases(tudo),] # Casos completos
tudo.cc<-tudo.cc[,-c(14,15)] # Retira colunas obsoletas (Abandono e Existente, respectivamente)
