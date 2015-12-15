#### P1 ####
modelo.p1.turma<-lm(P1 ~ Turma,data=tudo.cc) # P1 ~ Turma
modelo.p1.turno<-lm(P1 ~ Turno,data=tudo.cc) # P1 ~ Turno
modelo.p1.turma.turno<-lm(P1 ~ Turno + Turma,data=tudo.cc) # P1 ~ Turma + Turno

#### P2 ####
modelo.p2.turma<-lm(P2 ~ Turma,data=tudo.cc) # P2 ~ Turma
modelo.p2.turno<-lm(P2 ~ Turno,data=tudo.cc)
modelo.p2.turma.turno<-lm(P2 ~ Turno + Turma,data=tudo.cc)
modelo.p2.p1.turma<-lm(P2 ~ P1 + Turma,data=tudo.cc)
modelo.p2.p1.turno<-lm(P2 ~ P1 + Turno,data=tudo.cc)

#### Média (casos completos) ####
modelo.media.turma<-lm(Média.P2 ~ Turma,data=tudo.cc)
modelo.media.turno<-lm(Média.P2 ~ Turno,data=tudo.cc)
modelo.media.turma.turno<-lm(Média.P2 ~ Turno + Turma,data=tudo.cc)

#### Abandono ####
# fizeram P1 e abandonaram na P2
modelo.abandono<-glm(Abandono ~ P1, family = binomial(link = "logit"), data=tudo[is.na(tudo$Abandono)==F,])
modelo.abandono.turma<-glm(Abandono ~ P1+Turma, family = binomial(link = "logit"), data=tudo)


#### Tempo ####
# dia da prova) 
modelo.p1.tempo<-lm(P1~Tempo1,data=tudo.cc)
modelo.p2.tempo<-lm(P2~Tempo2,data=tudo.cc)
modelo.p2.p1.tempo<-lm(P2~Tempo2+P1,data=tudo.cc)
modelo.p2.p1.tempo.turma<-lm(P2~Tempo2+P1+Turma,data=tudo.cc)
modelo.p2.p1.tempo.turma.turno<-lm(P2~Tempo2+P1+Turma+Turno,data=tudo.cc)
