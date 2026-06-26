-- Esta query é para popular a tabela de itens
-- Vai inserir direto no banco de dados sem precisar transformar em dataframe

INSERT INTO Itens (
    CO_POSICAO,
    SG_AREA,
    CO_ITEM,
    TX_GABARITO,
    CO_HABILIDADE,
    CO_PROVA
)
-- Entra direto no select, não precisa de VALUES quando for ler de outro lugar
SELECT
    ï»¿CO_POSICAO AS posicao, -- por algum motivo a query traz esses simbolos estranhos no nome dessa coluna.
    SG_AREA AS area_conhecimento,
    CO_ITEM,
    TX_GABARITO AS gabarito,
    CO_HABILIDADE AS habilidade,
    CO_PROVA
    -- esse FROM trata problemas de preenchimento da tabela original, corrindo valores faltantes e uso de aspas
FROM read_csv(caminho_csv, delim=',' , header=True, quote='', escape='', null_padding=True, max_line_size=2097152, encoding='latin-1', strict_mode=false, all_varchar=True)
WHERE 
    -- Apenas as provas da aplicação principal
    IN_ITEM_ABAN = 0 AND -- excluir itens anulados
    CO_PROVA IN (
        597,598,599,600, -- Codigos CN
        567,568,569,570, -- Codigos CH
        577,578,579,580, -- Codigos LC
        587,588,589,590 -- Codigos MT
    )