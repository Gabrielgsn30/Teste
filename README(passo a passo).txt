Programa foi desenvolvido em RAD, por questoes de erros na instalacao e gera��o 
do projeto no visual studio community 2019...

No inicio do sistema abre-se uma tela de login, onde ja possiu conexao com o banco de dados
e verifica o usuario digitado(internamente ja h� um usuario:adm e senha:123)

base Teste.bak est� no repositorio para fazer os devidos testes...

Apos fazer o Login o sistema abre uma tela com 3 botoes, um cadastro de diretor, um cadastro de filme e consulta filme diretor

->Cadastro Diretor
Possui 2 campos ID e a Descri��o e 3 botoes na tela Salvar, alterar e excluir

Apos informar a Descri��o e salvar o sistema gera automatico a id....
Se clicar em excluir o sistema exclui o cadastro;
Caso clicar em Alterar o sistema libera o campo ID para ser digitado, apos digitar e dar enter se houver cadastro para esse ID o sistema
traz na tela e ai poder� fazer a alteracao na descricao e salvar novamente ou excluir...

Cadastro de Filmes:

Possui 3 campos ID, a Descri��o do Filme e a ID do Diretor, 3 botoes na tela Salvar, alterar e excluir

Apos informar a Descri��o e informar uma ID de Diretor Valida, salvar o sistema gera automatico a id....
Se clicar em excluir o sistema exclui o cadastro;
Caso clicar em Alterar o sistema libera o campo ID para ser digitado, apos digitar e dar enter se houver cadastro para esse ID o sistema
traz na tela e ai poder� fazer a alteracao na descricao ou na ID Diretor e salvar novamente ou excluir...

Tela de Consulta:

Possui 2 campos ID Filme e ID Diretor, possui tambem 2 radioButton para selecionar onde quer fazer a pesquisa se � pesquisa de diretor ou de filme
al�m do botao pesquisar para mostrar o grid

Utilizei componentes TDF para conexao com o banco
Banco de dados Teste � de uma versao do SQL Express 2014

