# Análise das notas de 2015.2

## Estatísticas descritivas

### Esforço docente

#### Total de alunos nas planilhas
666

#### Alunos em ata
- P1: 607 (91.1%)
- P2: 613 (92%)

#### Número de provas corrigidas
- P1: 589
- P2: 528

### Esforço discente
#### Abandono
- Abandonaram **após** a P1: 70 (11.9%)

#### Inexistentes
- Não fizeram **nem** P1 **nem** P2: 68 (10.2%)

#### Reprovados
- Desconsiderando os abandonos e inexistentes: 205 (39.5%)
- Considerando todos os alunos: 352 (52.9%)
- Porcentagens de reprovados e aprovados por turma:

Turma   |   Reprovados (%) | Aprovados (%)
---- | ---- | ----
  Civil3AM | 48.1 |51.9
  Civil4AN | 40.3 |59.7
  Civil4BM|  42.9| 57.1
  Civil4BN | 54.4 |45.6
  Civil4CN | 63.6 |36.4
  Elet3AM |  62.5 |37.5
  Mec4AM |   47.4 |52.6
  Mec4BN |   35.3 |64.7
  Prod3AM |  77.8 |22.2
  Prod4AM |  77.8 |22.2
  Prod4BN |  52.3 |47.7
  Prod4CN |  54.2 |45.8

## Gráficos descritivos

Em todos os gráficos, a linha vermelha tracejada é a nota (ou média) 6, que corresponde à meta de aprovação.

### Notas agregadas
*Devido ao maior conteúdo oferecido, observa-se um menor rendimento médio na P2, em relação à P1.*
![notas](https://cloud.githubusercontent.com/assets/5522672/11767863/2b54f356-a1a3-11e5-84bb-54c9fa4927d8.png)

### Médias agregadas
*Observa-se 39.5% de reprovados*
![media](https://cloud.githubusercontent.com/assets/5522672/11767867/336865d2-a1a3-11e5-9389-2450d36ecc98.png)

### Notas por turma e por turno
*Observa-se 39.5% de reprovados*
![p1-2-turma-turno](https://cloud.githubusercontent.com/assets/5522672/11767875/61e14c08-a1a3-11e5-87df-0bae19b989d9.png)

## Influência do tempo (dia de aplicação da prova)
O tempo foi contado diferenciando cada turma e cada turno, para discriminar a comunicação entre turmas de dias diferentes, e mesmo de horários diferentes no mesmo turno. 

Investigando o dia de aplicação da prova para cada turma, podemos claramente constatar o aumento das notas médias nas turmas posteriores. **Parece haver suporte estatístico de que o dia de aplicação da prova influencia positivamente as notas.** (p-valores: <10% na P1, <1% na P2).

_A linha azul é a reta de melhor ajuste da nota, considerando **quando** a prova foi aplicada._
![p1-2-tempo](https://cloud.githubusercontent.com/assets/5522672/11768008/9f9065f4-a1a6-11e5-9dd6-3b73e5e892b0.png)
_Para estes gráficos, foram considerados apenas os alunos que têm **ambas** as notas (P1 e P2)._

Foram ajustados diversos modelos lineares aos dados, para tentar predizer a nota da P2. Iniciando com um modelo saturado, usando preditores como o dia da P1, dia da P2, nota da P1, turma e turno. Foi selecionado o modelo mais simples com melhor AIC. Tomando o AIC como critério de seleção, o modelo final considera como preditores apenas a nota da P1 e a turma (R2= ,AIC=1052.218).

O intercepto do modelo é 1.13920. O aluno médio obteve esta nota, sem considerar nenhum dos fatores mencionados acima. Para cada ponto obtido na P1, ele acrescenta 0.35640 na P2.

As turmas com melhor desempenho médio, controlados os fatores acima, foram Mec4BN (coeficiente 3.81885, p-valor 5.08e-12) e Civil4AN (coeficiente 3.08409, p-valor 5.58e-08).

As turmas com pior desempenho médio, controlados os fatores acima, foi Prod4AM (coeficiente -2.73858, p-valor 4.07e-06) e Prod3AM (coeficiente -1.49343, p-valor 0.04640), ambas no primeiro turno a receber a prova. 

O ajuste do modelo não é ótimo, explicando apenas 36.3% da variabilidade nas notas da P2. Incluir outros fatores não melhora o ajuste do modelo, e piora 

As turmas (p-valor) com maior influência significativa do dia de aplicação foram:
- Influência positiva 


- Influência negativa


Um modelo mais simples consiste em considerar apenas implicitamente o tempo, tomando como preditores a nota da P1 e a turma (R^2= 0.2853, AIC = 1052.218).
