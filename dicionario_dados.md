## Estrutura das tabelas

### RESPOSTAS
| Coluna | Tipo | Descrição |
| -------- | ----- | ----------- |
| Ano    | VARCHAR     | Ano de aplicação da prova |
| CO_PROVA_CN    | VARCHAR | Código da prova de ciências da natureza |
| CO_PROVA_CH    | VARCHAR | Código da prova de ciências humanas |
| CO_PROVA_MT    | VARCHAR | Código da prova de matemática |
| CO_PROVA_LC    | FVARCHAR| Código da prova de linguagens e códigos |
| RESPOSTAS_CN    | VARCHAR  | Respostas do candidato em ciências da natureza |
| RESPOSTAS_CH    | VARCHAR  | Respostas do candidato em ciências humanas |
| RESPOSTAS_MT    | VARCHAR  | Respostas do candidato em matemática |
| RESPOSTAS_LC    | VARCHAR  | Respostas do candidato em linguagens e códigos |


### ITENS
| Coluna | Tipo | Descrição |
| -------- | ----- | ----------- |
| CO_POSICAO    | VARCHAR | Posição do item no string de respostas (ordem da questão na prova) |
| SG_AREA    | VARCHAR | Sigla da área do conhecimento |
| CO_ITEM    | VARCHAR | Código do item (identificador da questão) |
| TX_GABARITO   | VARCHAR | Gabarito da questão |
| CO_HABILIDADE    | VARCHAR | Código da habilidade assosciada |
| CO_PROVA    | VARCHAR | Código da prova |


