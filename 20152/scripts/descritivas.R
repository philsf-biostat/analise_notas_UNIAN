#### Estatísticas descritivas ####
# summary(tudo[,-c(1,2)]) # descartando colunas Nome e RA
summary(tudo) # dados já estão anonimizados

#### Esforço do docente ####

## Total de alunos
nrow(tudo)

## Presença em ata ##
table(tudo$Ata.P1) # constam na ata da P1
round(prop.table(table(tudo$Ata.P1))*100,digits=1) # Ata P1
table(tudo$Ata.P2) # constam na ata da P2
round(prop.table(table(tudo$Ata.P2))*100,digits=1) # Ata P2

## Provas corrigidas
nrow(tudo)-sum(is.na(tudo$P1)) #P1 corrigidas
nrow(tudo)-sum(is.na(tudo$P2)) #P2 corrigidas

#### Esforço discente ####
## Estatísticas de abandono
table(tudo$Abandono)
round(prop.table(table(tudo$Abandono))*100,digits=1)  # Abandono

# Estatísticas de não-existência
table(tudo$Existente)
round(prop.table(table(tudo$Existente))*100,digits=1)  # Existente

## Reprovação
table(tudo.cc$Média.P2>=6) # aprovados (casos completos)
round(prop.table(table(tudo.cc$Média.P2>=6))*100,digits=1) # aprovados (casos completos)
table(tudo$Média.P2>=6) # aprovados (todos os casos)
round(prop.table(table(tudo$Média.P2>=6))*100,digits=1) # aprovados (todos os casos)

## Tabela de contingência: Aprovado x Turma
table(data.frame(Turma=tudo$Turma, Aprovado=tudo$Média.P2>=6))
round(prop.table(table(data.frame(Turma=tudo$Turma, Aprovado=tudo$Média.P2>=6)),1)*100,digits=1)
round(addmargins(prop.table(table(data.frame(Turma=tudo$Turma, Aprovado=tudo$Média.P2>=6)),1)*100,2),digits=1)

#### Rascunhos obsoletos ####

# ## Reprovados (casos completos)
# sum(media<6) #absoluto
# length(media) #total
# round(sum(media<6)/length(media)*100,1) # porcentual de reprovados
# 
# ## Aprovados (desconsiderando os abandonos)
# round(sum(media>=6)/length(media)*100,1) # porcentual de reprovados
# 
# ## Reprovados (incluindo os abandonos)
# sum(tudo$Média.P2<6)
# length(tudo$Média.P2)
# round(sum(tudo$Média.P2<6)/length(tudo$Média.P2)*100,1) # porcentual de reprovados
# 
# ## Aprovados (desconsiderando os abandonos)
# round(sum(tudo$Média.P2>=6)/length(tudo$Média.P2)*100,1) # porcentual de reprovados