# Criar as tabelas do banco de dados
# basta chamar a função que se deseja dar manutenção

import duckdb

def criar_tabela_respostas():
    #conecta ao banco.
    con = duckdb.connect('enem_db.duckdb')

    # ler o .sql com o comando. Usa utf-8 para evitar problemas nos comentários
    with open('Queries/criar_tab_respostas.sql', 'r', encoding='utf-8') as query:
        query_criar_tabela = query.read()

    # executar a query acima
    print('Atualizando tabela de respostas')
    con.execute(query_criar_tabela)
    print('Tabela de respostas atualizada com sucesso.')

    # sempre fechar a conexão
    con.close()


def criar_tabela_itens():
    #conecta ao banco.
    con = duckdb.connect('enem_db.duckdb')

    # ler o .sql com o comando. Usa utf-8 para evitar problemas nos comentários
    with open('Queries/criar_tab_itens.sql', 'r', encoding='utf-8') as query:
        query_criar_tabela = query.read()

    # executar a query acima
    print('Atualizando tabela de itens')
    con.execute(query_criar_tabela)
    print('Tabela de itens atualizada com sucesso.')

    # sempre fechar a conexão
    con.close()


def criar_tabela_questoes():
    #conecta ao banco.
    con = duckdb.connect('enem_db.duckdb')

    # ler o .sql com o comando. Usa utf-8 para evitar problemas nos comentários
    with open('Queries/criar_tab_questoes.sql', 'r', encoding='utf-8') as query:
        query_criar_tabela = query.read()

    # executar a query acima
    print('Atualizando tabela de questoes')
    con.execute(query_criar_tabela)
    print('Tabela de questoes atualizada com sucesso.')

    # sempre fechar a conexão
    con.close()




# só chamar a função que se quer executar

# criar_tabela_respostas()
# criar_tabela_itens()
# criar_tabela_questoes()