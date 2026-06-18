# Popular as tabelas do banco de dados
# basta chamar a função que se deseja dar manutenção

import duckdb
import caminhos

def pop_tabela_respostas():
    #conecta ao banco.
    con = duckdb.connect('enem_db.duckdb')

    # ler o .sql com o comando. Usa utf-8 para evitar problemas nos comentários
    with open('Queries/pop_tab_respostas.sql', 'r', encoding='utf-8') as query:
        query_pop_tabela = query.read()


    # É necessário a troca do caminho do arquivo via variável python, já que o sql está vindo de outro arquivo
    caminho_real = caminhos.CAMINHO_ENEM_2020
    query_pop_tabela = query_pop_tabela.replace("caminho_csv",f"'{caminho_real}'")

    # executar a query acima
    print('Populando tabela de respostas')
    con.execute(query_pop_tabela)
    print('Tabela de respostas populada com sucesso.')

    # sempre fechar a conexão
    con.close()


# basta chamar a função que quer dar manutenção
pop_tabela_respostas()  # está limitada a 10000 linhas enquanto teste