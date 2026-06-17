-- Criar o banco de dados e, dentro dele, criar a tabela de microdados

-- Dropar a tabela que já existe, caso sejam necessárias alterações
DROP TABLE IF EXISTS Respostas;

-- Criar (ou recriar) a tabela
CREATE TABLE Respostas (
    Ano VARCHAR (5),
    -- CÓDIGO DA PROVA
    CO_PROVA_CN VARCHAR (10),
    CO_PROVA_CH VARCHAR (10),
    CO_PROVA_MT VARCHAR (10),
    CO_PROVA_LC VARCHAR (10),
    -- Vetores de texto com as respostas dos candidatos
    TX_RESPOSTAS_CN VARCHAR(70),
    TX_RESPOSTAS_CH VARCHAR(70),
    TX_RESPOSTAS_MT VARCHAR(70),
    TX_RESPOSTAS_LC VARCHAR(70),
);