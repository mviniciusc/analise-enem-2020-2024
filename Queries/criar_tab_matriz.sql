-- Dropar a tabela que já existe, caso sejam necessárias alterações
DROP TABLE IF EXISTS Matriz;

-- Criar (ou recriar) a tabela
CREATE TABLE Matriz (
    AREA VARCHAR (150),
    CODIGO_AREA VARCHAR(2),
    COMPETENCIA VARCHAR (2),
    TX_COMPETENCIA VARCHAR (500),
    HABILIDADE VARCHAR (2),
    TX_HABILIDADE VARCHAR (500)
);