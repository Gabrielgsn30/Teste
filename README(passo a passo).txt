Programa foi desenvolvido em RAD, por questoes de erros na instalacao e geração 
do projeto no visual studio community 2019...

No inicio do sistema abre-se uma tela de login, onde ja possiu conexao com o banco de dados
e verifica o usuario digitado(internamente ja há um usuario:adm e senha:123)

base Teste.bak está no repositorio para fazer os devidos testes...

Apos fazer o Login o sistema abre uma tela com 3 botoes, um cadastro de diretor, um cadastro de filme e consulta filme diretor

->Cadastro Diretor
Possui 2 campos ID e a Descrição e 3 botoes na tela Salvar, alterar e excluir

Apos informar a Descrição e salvar o sistema gera automatico a id....
Se clicar em excluir o sistema exclui o cadastro;
Caso clicar em Alterar o sistema libera o campo ID para ser digitado, apos digitar e dar enter se houver cadastro para esse ID o sistema
traz na tela e ai poderá fazer a alteracao na descricao e salvar novamente ou excluir...

Cadastro de Filmes:

Possui 3 campos ID, a Descrição do Filme e a ID do Diretor, 3 botoes na tela Salvar, alterar e excluir

Apos informar a Descrição e informar uma ID de Diretor Valida, salvar o sistema gera automatico a id....
Se clicar em excluir o sistema exclui o cadastro;
Caso clicar em Alterar o sistema libera o campo ID para ser digitado, apos digitar e dar enter se houver cadastro para esse ID o sistema
traz na tela e ai poderá fazer a alteracao na descricao ou na ID Diretor e salvar novamente ou excluir...

Tela de Consulta:

Possui 2 campos ID Filme e ID Diretor, possui tambem 2 radioButton para selecionar onde quer fazer a pesquisa se é pesquisa de diretor ou de filme
além do botao pesquisar para mostrar o grid

Utilizei componentes TDF para conexao com o banco
Banco de dados Teste é de uma versao do SQL Express 2014

