# ANÁLISE DE ACERTOS E DIFICULDADES DE QUESTÕES DO ENEM 2020-2024

## Introdução
Bem-vindo(a). Este projeto busca analisar microdados do ENEM nos últimos 5 anos de dados disponíveis.
A intenção é que essa análise produza conclusões que ajudem a guiar a preparação educacional de estudantes e instituições de ensino.

## Fonte dos dados
Os dados utilizados aqui são os chamados "microdados do ENEM". Esses dados estãos disponíveis publicamente na plataforma do INEP, podendo ser acessados diretamente em https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/enem.

## Objetivos
Para nortear as análises foram traçados 3 eixos de estudo, cada um representado por uma pergunta:
* Quais competências aparecem com maior frequência de questões?
* Quais competências têm menor taxa de acerto?
* Qual a importância dos distratores nas baixas taxas de acerto do item anterior?

## Tecnologias e ferramentas
Para esse projeto o tratamento inicial dos dados foi feito em python e SQL. A modelagem foi realizada com consultas SQL, já filtrando dos dados originais apenas os que seriam interessantes aos objetivos. A ligação dessas consultas com o banco de dados foi feita usando python.
O sistema de gerenciamento de banco de dados usado foi duckdb. Esse sistema permite que os dados dos arquvios da fonte (em formato .csv) pudessem se inseridos diretamente no banco de dados (formato .duckdb) sem a necessidade de utilizar um dataframe. Assim, o grande volume de dados inicialmente analisado não foi limitado pelo hardware local.

## Estrutura das tabelas
As tabelas foram estruturadas de forma que os dados necessários para a análise estivessem em um única tabela final. Para maiores detalhes sobre cada tabela, consulte o [dicionário de dados](dicionario_dados.md).

## Tratamento dos dados
Devido ao grande volume de dados de algumas das tabelas da fonte, o tratamento dessas tabelas não pôde ser feito em dataframe pois esbarraria em limitações de hardware. Contornando essa limitação, o duckdb escreve as informações selecionadas direto no banco de dados. Para manter a uniformidade do projeto, as outras tabelas menores também sofreram o mesmo tratamento.

Os filtros aplicados inicialmente na tabela de respostas foram apenas para selecionar as provas da aplicação principal e remover linhas de alunos ausentes. Na tabela de itens foram removidos os itens anulados.

Para que fosse feita a correta correspondência de cada item com sua habilidade assosciada, foi criada a tabela de matriz de referência. Essa tabela foi feita baseada na matriz de referência que é disponibilizada pela fonte dos dados. 