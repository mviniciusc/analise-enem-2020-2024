-- Criar o banco de dados e, dentro dele, criar a tabela de microdados

-- Dropar a tabela que já existe, caso sejam necessárias alterações
DROP TABLE IF EXISTS respostas;

-- Criar (ou recriar) a tabela
CREATE TABLE respostas (
    Ano VARCHAR (5),
    Estado VARCHAR(2),
    -- NOTAS
    NOTA_CN FLOAT, -- OBS: duckdb não aceita tamanho no float. Para especificar tamanho use DECIMAL
    NOTA_CH FLOAT,
    NOTA_LC FLOAT,
    NOTA_MT FLOAT,
    -- RESPOSTAS
    RESPOSTAS_CN VARCHAR(70),
    RESPOSTAS_CH VARCHAR(70),
    RESPOSTAS_LC VARCHAR(70),
    RESPOSTAS_MT VARCHAR(70),
    -- ESCOLHA DE LINGUA ESTRANGEIRA
    TP_LINGUA VARCHAR(1),
    -- GABARITOS
    GABARITO_CN VARCHAR(70),
    GABARITO_CH VARCHAR(70),
    GABARITO_LC VARCHAR(70),
    GABARITO_MT VARCHAR(70)
);