-- Esta query é para popular a tabela da matriz de referência
-- Vai inserir direto no banco de dados sem precisar transformar em dataframe

INSERT INTO Matriz (
    AREA,
    CODIGO_AREA,
    COMPETENCIA,
    TX_COMPETENCIA,
    HABILIDADE,
    TX_HABILIDADE
)

-- Entra direto no select, não precisa de VALUES quando for ler de outro lugar
SELECT
    *
    FROM read_csv_auto(caminho_csv, delim=',' , max_line_size=2097152, encoding='utf-8')