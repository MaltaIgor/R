# Estat�stica B�sica

# Exerc�cio

# Cuidado: A Linguagem R � case sensitive!

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/dmpm/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exerc�cio 1: Apresente um resumo de tipos de dados e estat�sticas do dataset.
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exerc�cio 2: Qual a m�dia de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# Exerc�cio 3: Qual turma apresentou maior variabilidade de notas? Justifique sua resposta.
sd(notas$TurmaA)
sd(notas$TurmaB)

# Exerc�cio 4 - Calcule o coeficiente de varia��o das 2 turmas.
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA
cvB

# Exerc�cio 5 - Qual nota apareceu mais vezes em cada turma?
calculaModa <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)

