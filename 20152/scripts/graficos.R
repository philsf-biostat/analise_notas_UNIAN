#### Notas por Turma ####

png("../figuras/turmas/Civil4BM-P1.png")
hist(tudo[tudo$Turma=="Civil4BM",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Civil4BM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Civil4BM-P2.png")
hist(tudo[tudo$Turma=="Civil4BM",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Civil4BM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Mec4AM-P1.png")
hist(tudo[tudo$Turma=="Mec4AM",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Mec4AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Mec4AM-P2.png")
hist(tudo[tudo$Turma=="Mec4AM",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Mec4AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Civil4AN-P1.png")
hist(tudo[tudo$Turma=="Civil4AN",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Civil4AN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Civil4AN-P2.png")
hist(tudo[tudo$Turma=="Civil4AN",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Civil4AN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Civil4BN-P1.png")
hist(tudo[tudo$Turma=="Civil4BN",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Civil4BN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Civil4BN-P2.png")
hist(tudo[tudo$Turma=="Civil4BN",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Civil4BN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Prod4AM-P1.png")
hist(tudo[tudo$Turma=="Prod4AM",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Prod4AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Prod4AM-P2.png")
hist(tudo[tudo$Turma=="Prod4AM",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Prod4AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Prod3AM-P1.png")
hist(tudo[tudo$Turma=="Prod3AM",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Prod3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Prod3AM-P2.png")
hist(tudo[tudo$Turma=="Prod3AM",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Prod3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Elet3AM-P1.png")
hist(tudo[tudo$Turma=="Elet3AM",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Elet3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Elet3AM-P2.png")
hist(tudo[tudo$Turma=="Elet3AM",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Elet3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

ensalada <- tudo[tudo$Turma=="Prod3AM" | tudo$Turma=="Elet3AM",]
hist(ensalada$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Prod3AM+Elet3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
hist(ensalada$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Prod3AM+Elet3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
rm(ensalada)
dev.off()

png("../figuras/turmas/Civil4CN-P1.png")
hist(tudo[tudo$Turma=="Civil4CN",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Civil4CN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Civil4CN-P2.png")
hist(tudo[tudo$Turma=="Civil4CN",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Civil4CN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Mec4BN-P1.png")
hist(tudo[tudo$Turma=="Mec4BN",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Mec4BN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Mec4BN-P2.png")
hist(tudo[tudo$Turma=="Mec4BN",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Mec4BN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Prod4BN-P1.png")
hist(tudo[tudo$Turma=="Prod4BN",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Prod4BN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Prod4BN-P2.png")
hist(tudo[tudo$Turma=="Prod4BN",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Prod4BN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Prod4CN-P1.png")
hist(tudo[tudo$Turma=="Prod4CN",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Prod4CN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Prod4CN-P2.png")
hist(tudo[tudo$Turma=="Prod4CN",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Prod4CN", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/turmas/Civil3AM-P1.png")
hist(tudo[tudo$Turma=="Civil3AM",]$P1, breaks=c(0,2.5,5,7.5,10), main="P1 Civil3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()
png("../figuras/turmas/Civil3AM-P2.png")
hist(tudo[tudo$Turma=="Civil3AM",]$P2, breaks=c(0,2.5,5,7.5,10), main="P2 Civil3AM", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

#### Notas agregadas ####
png("../figuras/agregadas/Todas-agregadas-P1.png")
hist(tudo$P1, breaks=c(0,2.5,5,7.5,10), main="P1 (todas as turmas agregradas)", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

png("../figuras/agregadas/Todas-agregadas-P2.png")
hist(tudo$P2, breaks=c(0,2.5,5,7.5,10), main="P2 (todas as turmas agregradas)", xlab="Notas", ylab = "Quantidade")
abline(v=6,col="red",lwd=2,lty=2)
dev.off()

boxplot(data.frame(P1=tudo$P1,P2=tudo$P2),main = "Notas (todas as turmas agregadas)")
abline(h=6,col="red",lwd=2,lty=2)

plot(tudo$P1,tudo$P2,xlab="P1",ylab="P2",main = "Notas (todas as turmas agregadas)")
abline(v=6,h=6,col="red",lwd=2,lty=2)

#### Gráficos das médias ####
par(mfrow=c(2,2))
hist(tudo$Média.P2,breaks=c(0,2.5,5,7.5,10),xlab="Média",ylab="Quantidade",main = "Média (todas as turmas agregadas)")
abline(v=6,col="red",lwd=2,lty=2)

boxplot(tudo$Média.P2,ylab="Média",main = "Média (todas as turmas agregadas)", xlab="Todos os alunos")
abline(h=6,col="red",lwd=2,lty=2)

plot(tudo$Média.P2,xlab="Aluno",ylab="Média",main = "Média (todas as turmas agregadas)")
abline(h=6,col="red",lwd=2,lty=2)
par(mfrow=c(1,1))

#### Gráficos por turma e turno ####
par(mfrow=c(2,2))
boxplot(data=tudo,P1~Turma, main="P1 por turma")
abline(h=6,col="red",lwd=2,lty=2)
# abline(modelo.p1.turma,lwd=2, col="blue")

boxplot(data=tudo,P2~Turma, main="P2 por turma")
abline(h=6,col="red",lwd=2,lty=2)
# abline(modelo.p2.turma,lwd=2, col="blue")

boxplot(data=tudo,P1~Turno, main="P1 por turno")
abline(h=6,col="red",lwd=2,lty=2)
# abline(modelo.p1.turno,lwd=2, col="blue")

boxplot(data=tudo,P2~Turno, main="P2 por turno")
abline(h=6,col="red",lwd=2,lty=2)
# abline(modelo.p2.turno,lwd=2, col="blue")

par(mfrow=c(1,1))

#### Notas por dia de prova ####
par(mfrow=c(2,2))
boxplot(P1 ~ Tempo1,data=tudo.cc,main="P1 por tempo",ylab="Nota",xlab="Dia da prova")
abline(h=6,col="red",lwd=2,lty=2)
abline(modelo.p1.tempo,lwd=2, col="blue")

boxplot(P2~Tempo2,data=tudo.cc,main="P2 por tempo",ylab="Nota",xlab="Dia da prova")
abline(h=6,col="red",lwd=2,lty=2)
abline(modelo.p2.tempo,lwd=2, col="blue")

plot(jitter(P1) ~ jitter(Tempo1), data=tudo.cc,main="P1 por tempo",ylab="Nota",xlab="Dia da prova")
abline(h=6,col="red",lwd=2,lty=2)
abline(modelo.p1.tempo,lwd=2, col="blue")

plot(jitter(P2) ~ jitter(Tempo2), data=tudo.cc,main="P2 por tempo",ylab="Nota",xlab="Dia da prova")
abline(h=6,col="red",lwd=2,lty=2)
abline(modelo.p2.tempo,lwd=2, col="blue")

par(mfrow=c(1,1))

# boxplot(P2~Tempo2,data=tudo.cc,add=T)
dev.off()
