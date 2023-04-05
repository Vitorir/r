data.frame(Base_)
Y = table(Base_$`5. Tipo de Residência`)
Y
X = prop.table(table(Base_$`5. Tipo de Residência`))
X
round(X)

# tabela duas entradas
w = table(Base_$`5. Tipo de Residência`, Base_$`6. Sexo`)
w
round(prop.table(w), 2)

Total_linha <- margin.table(w, 2)
Total_coluna <- margin.table(w, 1)
tab <- rbind(cbind(w, Total_coluna), c(Total_linha, sum(Total_coluna)))
dimnames (tab) [[1]][4]<- "Total_linha"
tab

pie(table(Base_$`5. Tipo de Residência`), col = 
      c("green", "yellow", "blue"), main = "Tipo de Residência")
barplot(table(Base_$`5. Tipo de Residência`), 
        xlab= "Tipo residencia", ylab="Quantidade", ylim=c(0, 80),
        col=c("green", "yellow", "red"))


# IDADE VERSUS SEXO
z = table(Base_$`7. Idade (Anos)`, Base_$`6. Sexo`)
z

Total_linha <- margin.table(z, 2)
Total_coluna <- margin.table(z, 1)
tab <- rbind(cbind(z, Total_coluna), c(Total_linha, sum(Total_coluna)))
dimnames (tab) [[1]][4]<- "Total_linha"
tab

pie(table(Base_$`6. Sexo`), 
    col=c("green", "yellow"))



# GRAFICO DE SETOR PARA A VARIAVEL SEXO
barplot(table(Base_$`6. Sexo`), xlab = "Sexo", ylab = "Quantidade",
        ylim = c(0, 30), col = c("green", "yellow", "red"))

# BARPLOT ESCOLARIDADE
barplot(table(Base_$`9. Escolaridade`), xlab = "Grau", 
        ylab = "Quantidade", ylim = c(0, 30),  col = c("green", "red"))


# MEDIA
mean(Base_$`3. Tempo Mora na Localidade`)

media = median(Base_$`3. Tempo Mora na Localidade`)

# moda
getmode = function(x) {
  uniqv = unique(x) # listar todos os valores da variavel
  uniqv[which.max(tabulate(match(x, uniqv)))]
}
getmode(Base_$`3. Tempo Mora na Localidade`)

# variância
var(Base_$`3. Tempo Mora na Localidade`)
# desvio padrão
dp = sd(Base_$`3. Tempo Mora na Localidade`)
# coeficiente
cv = sd(Base_$`3. Tempo Mora na Localidade`) / mean(Base_$`3. Tempo Mora na Localidade`)
cv
# sumário
summary(Base_$`3. Tempo Mora na Localidade`)
