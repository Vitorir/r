data.frame(Enade_2021_1_)

# Determinar a Estatística Descritiva das variáveis
# Grau Acadêmico
ga = table(Enade_2021_1_$`Grau Acadêmico`)
ga

pie(table(Enade_2021_1_$`Grau Acadêmico`), col = 
      c("green", "yellow", "red"), main = "Grau Acadêmico")
# Esse gráfico mostra a divisão de de grau acadêmico ofertadas pelas IES


# Organização Acadêmica
colnames(Enade_2021_1_)[5] <- "CFET"
oa = table(Enade_2021_1_$`Organização Acadêmica`)
oa

barplot(table(Enade_2021_1_$`Organização Acadêmica`),
        xlab = "Organização Acadêmica", ylab = "Quantidade", ylim = c(0, 10000),
        col = c("green", "yellow", "red", "blue", "black"),
        main = "Organização Acadêmica")


   
# Categoria Administrativa
ca = table(Enade_2021_1_$`Categoria Administrativa`)
ca

barplot(table(Enade_2021_1_$`Categoria Administrativa`),
        xlab = "Categoria Administrativa", ylab = "Quantidade", ylim = c(0, 10000),
        col = c("green", "yellow", "red", "blue", "black", "pink"),
        main = "Categoria Administrativa")


# Modalidade de Ensino
me = table(Enade_2021_1_$`Modalidade de Ensino`)
me

pie(table(Enade_2021_1_$`Modalidade de Ensino`), col = 
      c("green", "yellow"), main = "Modalidade de Ensino")




# Conceito Enade (Faixa)
ce = table(Enade_2021_1_$`Conceito Enade (Faixa)...22`)
ce

barplot(table(Enade_2021_1_$`Conceito Enade (Faixa)...22`),
        xlab = "Conceito Enade (Faixa)...22", ylab = "Quantidade", ylim = c(0, 10000),
        col = c("green", "yellow", "red", "blue", "black", "pink"),
        main = "Conceito Enade (Faixa)...22")




# Conceito Enade versus Modalidade de Ensino
cevme = table(Enade_2021_1_$`Conceito Enade (Contínuo)`, Enade_2021_1_$`Modalidade de Ensino`)
cevme



# Categoria admistrativa vesus conceito Enade
cavce = table(Enade_2021_1_$`Categoria Administrativa`, Enade_2021_1_$`Conceito Enade (Contínuo)`)
cavce


# Jogar resultados no Latex, criando tabela pra cada um