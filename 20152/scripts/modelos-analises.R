#### P1 ####
summary(modelo.p1.turma)
summary(modelo.p1.turno)
summary(modelo.p1.turma.turno)

#### P2 ####
summary(modelo.p2.turma)
summary(modelo.p2.turno)
summary(modelo.p2.turma.turno)
summary(modelo.p2.p1.turma)
summary(modelo.p2.p1.turno)

#### Média ####
summary(modelo.media.turma)
summary(modelo.media.turno)
summary(modelo.media.turma.turno)

#### Abandono ####
summary(modelo.abandono)
summary(modelo.abandono.turma)
anova(modelo.abandono,modelo.abandono.turma)

#### Tempo ####
summary(modelo.p1.tempo)
summary(modelo.p2.tempo)
summary(modelo.p2.p1.tempo)
summary(modelo.p2.p1.tempo.turma)
# summary(modelo.p2.p1.tempo.turma.turno)
anova(modelo.p2.tempo,modelo.p2.p1.tempo,modelo.p2.p1.tempo.turma)
step(modelo.p2.p1.tempo.turma)

# Modelo moderadamente saturado, step()
summary(step(lm(P2 ~ P1 + Tempo2 + Tempo1 + Turma + Turno, data = tudo.cc)))
# Vencedor (R2=0.3632, AIC=820.6): P2 ~ P1 + Turma (modelo.p2.p1.turma)

# Modelo maximamente saturado, step()
summary(step(lm(P2 ~ ., data = tudo.cc), direction = "forward"))
# Vencedor (R2=1, AIC=-4536.12): P2 ~ Trabalho.1 + P1 + Total.P1 + Trabalho.2 + Total.P2 + Média.P2 + Ata.P1 + Ata.P2 + Turno + Turma + Tempo1 + Tempo2
summary(step(lm(P2 ~ ., data = tudo.cc), direction = "backward"))
# Vencedor (R2=1, AIC=-4557.56): P2 ~ Trabalho.2 + Total.P2 + Média.P2
summary(step(lm(P2 ~ ., data = tudo.cc), direction = "both"))
# Vencedor (R2=1, AIC=-4558.48): P2 ~ Trabalho.2 + Total.P2 + Média.P2 + Tempo2
summary(step(lm(P2 ~ ., data = tudo.cc)))
# Vencedor (R2=1, AIC=-4547.78): P2 ~ Trabalho.2 + Total.P2 + Média.P2


# Investigar transformações no pacote car: bcPower e powerTransform


# library(car)
# avPlots(modelo.p2.tempo)
# avPlots(modelo.p2.p1.tempo)
# avPlots(modelo.p2.p1.turma)

# influencePlot(modelo.p2.p1.tempo.turma,	id.method="identify", main="Influence Plot", sub="Circle size is proportial to Cook's Distance")
