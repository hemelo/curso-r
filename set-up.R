# O tibble é uma versão moderna do data frame do R. Ele é mais eficiente em termos de memória e é mais fácil de imprimir. 
library(tibble)

# O ggplot2 é uma biblioteca que serve para criar gráficos
library(ggplot2)

# O Mice é uma biblioteca que serve para imputar valores ausentes
library(mice)

# O dplyr é o pacote mais útil para realizar transformação de dados, aliando simplicidade e eficiência de uma forma elegante. Os scripts em R que fazem uso inteligente dos verbos dplyr e as facilidades do operador pipe tendem a ficar mais legíveis e organizados, sem perder velocidade de execução.

#As principais funções do dplyr são:
#
#select() - seleciona colunas
#arrange() - ordena a base
#filter() - filtra linhas
#mutate() - cria/modifica colunas
#group_by() - agrupa a base
#summarise() - sumariza a base
#Todas essas funções seguem as mesmas características:
#
#O input é sempre uma tibble e o output é sempre uma tibble.
#Colocamos a tibble no primeiro argumento e o que queremos fazer nos outros argumentos.
#A utilização é facilitada com o emprego do operador %>%.
#As principais vantagens de se usar o dplyr em detrimento das funções do R base são:
#
#Manipular dados se torna uma tarefa muito mais simples.
#O código fica mais intuitivo de ser escrito e mais simples de ser lido.
#O pacote dplyr utiliza C e C++ por trás da maioria das funções, o que geralmente torna o código mais rápido.
#É possível trabalhar com diferentes fontes de dados, como bases relacionais (SQL) e data.table.
library(dplyr)

#Dentro do tidyverse, uma base tidy é uma base fácil de se trabalhar, isto é, fácil de se fazer manipulação de dados, fácil de se criar visualizações, fácil de se ajustar modelos e por aí vai.
#Na prática, uma base tidy é aquela que se encaixa bem no framework do tidyverse, pois os pacotes como o dplyr e o ggplot2 foram desenvolvidos para funcionar bem com bases tidy. E assim como esses pacotes motivaram o uso de bases tidy, o conceito tidy motiva o surgimento de novos frameworks, como o tidymodels para modelagem.
#As duas propriedades mais importantes de uma base tidy:
#  cada coluna é uma variável;
#  cada linha é uma observação.
#
#Essa definição proporciona uma maneira consistente de se referir a variáveis (nomes de colunas) e observações (índices das linhas).
#O pacote {tidyr} possui funções que nos ajudam a transformar uma base bagunçada em uma base tidy. Ou então, nos ajudam a bagunçar um pouquinho a nossa base quando isso nos ajudar a produzir o resultados que queremos.
#Vamos ver aqui algumas de suas principais funções:
#
#separate() e unite(): para separar variáveis concatenadas em uma única coluna ou uni-las.
#pivot_wider() e pivot_longer(): para pivotar a base.
#nest() e unnest(): para criar list columns.
#drop_na(): para remover linhas com valores NA.
library(tidyr)