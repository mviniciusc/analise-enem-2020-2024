-- Dropar a tabela que já existe, caso sejam necessárias alterações
DROP TABLE IF EXISTS Questoes;

-- Criar (ou recriar) a tabela
CREATE TABLE Questoes (
    ANO VARCHAR(5),
    CO_ITEM VARCHAR (10),
    CO_HABILIDADE VARCHAR (2),
    TX_HABILIDADE VARCHAR (300),
    SG_AREA VARCHAR (2),
    TOTAL_A INT,
    TOTAL_B INT,
    TOTAL_C INT,
    TOTAL_D INT,
    TOTAL_E INT,
    TOTAL_NULO INT,
    TOTAL_ACERTOS INT,
);