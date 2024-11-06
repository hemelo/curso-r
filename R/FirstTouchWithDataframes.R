# data frame de exemplo com uma coluna "idade_meses"
data_frame <- data.frame(idade_meses = c(12, 24, 36, 48, 60))

# Mostrar o data frame original
print("Data frame original:")
print(data_frame)

# Criar uma nova variável chamada "idade_em_anos" com base em "idade_meses"
data_frame$idade_em_anos <- data_frame$idade_meses / 12

# Mostrar o data frame com a nova variável
print("Data frame com a nova variável:")
print(data_frame)

# Renomear uma variável em um data frame
colnames(data_frame)[colnames(data_frame) == "variavel_antiga"] <- "variavel_nova"
# Ou, usando a função 'names()'
names(data_frame)["variavel_antiga"] <- "variavel_nova"

# Exemplo
data_frame <- data.frame(
  nome = c("Alice", "Bob", "Charlie"),
  idade = c(30, 25, 35),
  cidade = c("Nova York", "Los Angeles", "Chicago")
)

# Mostrar o data frame original
print("Data frame original:")
print(data_frame)

# Renomear a variável "cidade" para "localidade" usando colnames()
colnames(data_frame)[colnames(data_frame) == "cidade"] <- "localidade"

# Mostrar o data frame com a variável renomeada
print("Data frame com a variável renomeada:")
print(data_frame)

# data frame de exemplo
data_frame <- data.frame(
  nome = c("Alice", "Bob", "Charlie"),
  idade = c(30, 25, 35),
  cidade = c("Nova York", "Los Angeles", "Chicago")
)

# Mostrar o data frame original
print("Data frame original:")
print(data_frame)

# Selecionar uma única coluna
coluna_selecionada <- data_frame$idade

# Mostrar a coluna selecionada
print("Coluna selecionada:")
print(coluna_selecionada)

# Selecionar várias colunas
colunas_selecionadas <- data_frame[, c("nome", "cidade")]

# Mostrar as colunas selecionadas
print("Colunas selecionadas:")
print(colunas_selecionadas)

# Atribuição de valores a variáveis
idade <- 2

# Renomear variáveis em um data frame
data_frame <- data.frame(var_antiga = c(1, 2, 3, 4, 5))
colnames(data_frame)[colnames(data_frame) == "var_antiga"] <- "var_nova"

# Criação de uma nova variável com base em valores existentes
idade_em_meses <- idade * 12

# Identificação de valores ausentes em um vetor
vetor <- c(1, 2, NA, 4, 5)
valores_ausentes <- is.na(vetor)

# Identificação de valores ausentes em um data frame
data_frame <- data.frame(idade = c(25, NA, 30, 35),
                         salario = c(50000, 55000, NA, 60000))
valores_ausentes <- is.na(data_frame)
print(valores_ausentes)

# data frame de exemplo
dados <- data.frame(
  A = c(1, 2, NA, 4),
  B = c(NA, 2, 3, 4)
)

# Remover linhas com valores ausentes
dados_limpos <- na.omit(dados)

# Mostrar o data frame após a remoção
print(dados_limpos)

# data frame de exemplo
dados <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, 4, 5)
)

# Calcular a mediana da coluna "A"
mediana <- median(dados$A, na.rm = TRUE)

# Preencher valores ausentes com a mediana
dados$A[is.na(dados$A)] <- mediana

# Mostrar o data frame após o preenchimento
print(dados)

# Carregar o data frame de dados
# O datafrasem nhanes é um dataframe de dados de saúde que contém valores ausentes
data(nhanes)

# Visualizar o data frame de dados
head(nhanes)

# Definir o método de imputação
# O método pmm é um método de imputação por regressão linear que usa uma média ponderada das variáveis não ausentes para estimar os valores ausentes.
impute_method <- "pmm"

# Realizar a imputação
# Este passo realiza a imputação de valores ausentes usando 
# o método especificado em impute_method.
nhanes_imputed <- mice(nhanes, method = impute_method)

# Visualizar os dados imputados
completed_data <- complete(nhanes_imputed)
head(completed_data)

# Calcular a média da coluna "age" no data frame imputado
media_idade <- mean(completed_data$age)

# Criar dados 
# mulheres - 0
# homens - 1
data_frame <- data.frame(sexo = c(0, 1, 0, 1, 0, 1), idade = c(25, 30, 35, 40, 45, 50))

# Filtrar o data frame para incluir apenas homens
homens <- data_frame[data_frame$sexo == 1, ]

# Mostrar o data frame filtrado
print(homens)

# Filtrar o data frame por genero e calcular a media de idade
dados_agrupados <- data_frame %>%
  group_by(sexo) %>%
  summarise(media_idade = mean(idade, na.rm = TRUE))

# Mostrar os dados agrupados
print(dados_agrupados)

# Resumo estatístico
# Calcular a média, mediana, mínimo e máximo da coluna "idade"
resumo_estatistico <- summary(data_frame$idade)

# Mostrar o resumo estatístico
print(resumo_estatistico)

# Uso dos comandos gather e spread do pacote tidyr para transformar dados de largura para comprimento e vice-versa
# Data frame largo de exemplo
dados <- data.frame(id = c(1, 2, 3),
                    nome = c("Alice", "Bob", "Charlie"),
                    idade = c(25, 30, 35),
                    salario = c(50000, 55000, 60000),
                    cargo = c("Analista", "Gerente", "Diretor"),
                    departamento = c("TI", "RH", "Financeiro"))

# Converter o data frame de largo para longo
# Para isso, usamos a função gather() do pacote tidyr
dados_longos <- dados %>%
  gather(key = variavel, value = valor, -id, -nome)

head(dados_longos)

# Converter o data frame de longo para largo
# Para isso, usamos a função spread() do pacote tidyr
dados_largos <- dados_longos %>%
  spread(key = variavel, value = valor)

head(dados_largos)

# Adição de colunas
# Adicionar uma nova coluna chamada "salario_anual" ao data frame
# Utilizando a função mutate() do pacote dplyr

dados <- dados %>%
  mutate(salario_anual = salario * 12)

# Adicionar utilizando colSums
# Adicionar uma nova coluna chamada "total" ao data frame
# Utilizando a função colSums() do R base
vendas_loja <- data.frame(
  data_venda = c("2021-01-01", "2021-01-02", "2021-01-03", "2021-01-04", "2021-01-05"),
  produto = c("A", "B", "C", "A", NA, "B"),
  quantidade = c(100, NA, 150, 120, 180, 250),
  preco_unitario = c(10, 20, 15, NA, 18, 25)
)

valores_ausentes <- colSums(is.na(vendas_loja))
vendas_loja$total <- rowSums(vendas_loja[, c("quantidade", "preco_unitario")], na.rm = TRUE)

vendas_limpas <- vendas_loja %>% 
  drop_na()

print(vendas_limpas)

media_quantidade <- vendas_loja %>%
  summarise(media_quantidade = mean(quantidade, na.rm = TRUE))

print(media_quantidade)

vendas_com_valor_total <- vendas_loja %>%
  mutate(valor_total = quantidade * preco_unitario)

print(vendas_com_valor_total)

colunas_selecionadas <- vendas_loja %>%
  select(data_venda, produto, quantidade)

print(colunas_selecionadas)
