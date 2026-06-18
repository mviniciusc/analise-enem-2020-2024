-- Esta query é para popular a tabela de respostas
-- Vai inserir direto no banco de dados sem precisar transformar em dataframe

INSERT INTO Respostas (
    Ano,
    CO_PROVA_CN,
    CO_PROVA_CH,
    CO_PROVA_LC,
    CO_PROVA_MT,
    -- Vetor com todas as respostas de cada candidato
    TX_RESPOSTAS
)

-- Entra direto no select, não precisa de VALUES quando for ler de outro lugar
SELECT
    NU_ANO AS Ano,  -- ANO DA PROVA (para filtros)
    -- códigos das provas
    CO_PROVA_CN,
    CO_PROVA_CH,
    CO_PROVA_LC,
    CO_PROVA_MT,
    -- Vetor com todas as respostas juntas. O replace é necessário para remover o 99999 que representa a prova de língua não escolhida.
    (TX_RESPOSTAS_CN || TX_RESPOSTAS_CH || REPLACE(TX_RESPOSTAS_LC, '99999', '') ||  TX_RESPOSTAS_MT) AS TX_RESPOSTAS_GERAL

    FROM read_csv_auto(caminho_csv, delim=';' , max_line_size=2097152, encoding='latin-1')
    -- Filtros de presença
    WHERE 
        -- Filtrar apenas os alunos presentes
        TP_PRESENCA_CN == 1 AND 
        TP_PRESENCA_CH == 1 AND 
        TP_PRESENCA_LC == 1 AND 
        TP_PRESENCA_MT ==1 AND
        -- Apenas as provas da aplicação principal
        CO_PROVA_CN BETWEEN 597 AND 600 AND
        CO_PROVA_CH BETWEEN 567 AND 570 AND
        CO_PROVA_LC BETWEEN 577 AND 580 AND
        CO_PROVA_MT BETWEEN 587 AND 590
    LIMIT 10000
