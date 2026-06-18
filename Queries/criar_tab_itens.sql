-- Dropar a tabela que já existe, caso sejam necessárias alterações
DROP TABLE IF EXISTS Itens;

-- Criar (ou recriar) a tabela
CREATE TABLE Itens (
    CO_POSICAO VARCHAR (5),
    SG_AREA VARCHAR (2),
    CO_ITEM VARCHAR (10),
    TX_GABARITO VARCHAR (1),
    CO_HABILIDADE VARCHAR (2),
    CO_PROVA VARCHAR (10)
);