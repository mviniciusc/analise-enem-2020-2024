# Criar as tabelas do banco de dados
# basta chamar a função que se deseja dar manutenção

import duckdb

def criar_tabela_microdados():
    #conecta ao banco.
    con = duckdb.connect('enem_db.duckdb')

    # ler o .sql com o comando. Usa utf-8 para evitar problemas nos comentários
    with open('Queries/criar_tab_microdados.sql', 'r', encoding='utf-8') as query:
        query_criar_tabela = query.read()

    # executar a query acima
    print('Atualizando tabela de microdados')
    con.execute(query_criar_tabela)
    print('Tabela de microdados atualizada com sucesso.')

    # semopre fechar a conexão
    con.close()


# só chamar a função que se quer executar

criar_tabela_microdados()