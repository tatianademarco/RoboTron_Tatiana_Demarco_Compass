*** Settings ***
Documentation    Arquivo simples para requisições HTTP em APIs Rest
Library    RequestsLibrary
Resource    ./usuarios_keywords.robot
Resource    ./login_keywords.robot
Resource    ./produtos_keywords.robot
Resource    ./carrinho_keywords.robot

*** Variables ***
${response}

*** Test Cases ***
Cenario: GET Todos os Usuarios 200
    [tags]    GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${5}"
    Printar Conteudo Response

Cenario: GET Buscar Usuario por ID 200
    [tags]    GETIDUSUARIO
    Criar Sessao
    GET Endpoint /usuarios/{_id}
    Validar Status Code "200"
    Printar Conteudo Response

Cenario: POST Cadastrar Usuario 201
    [tags]    POST
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contém "sucesso"

Cenario: PUT Editar Usuario 200
    [Tags]    PUT
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"
    
Cenario: DELETE Deletar Usuario 200
    [tags]    DELETE
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200"

Cenario: POST Realizar Login 200
    [tags]    POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"

Cenario: GET Listar Produtos 200
    [tags]    GETPRODUTOS
    Criar Sessao
    GET Endpoint /produtos
    Validar Quantidade "${3}"
    Validar Status Code "200"

Cenario: GET Buscar Produto por ID 200
    [tags]    GETPRODUTOID
    Criar Sessao
    GET Endpoint /produtos/{_id}
    Validar Status Code "200"
    Printar Conteudo Response

Cenario: POST Criar Produto 201
    [tags]    POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /produtos
    Validar Status Code "201"

Cenario: PUT Editar Produto 200
    [Tags]    PUTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    PUT Endpoint /produtos
    Validar Status Code "200"

Cenario: DELETE Excluir Produto 200
    [tags]    DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    DELETE Endpoint /produtos
    Validar Status Code "200"

Cenario: POST Criar Usuario de Massa Estatica 201
    [tags]    POSTUSUARIOESTATICO
    Criar Sessao
    Criar Usuario Estatico Valido
    Validar Status Code "201"

Cenario: GET Todos os Carrinhos 200
    [tags]    GETCARRINHO
    Criar Sessao
    GET Endpoint /carrinhos
    Validar Status Code "200"
    Validar Quantidade "${1}"
    Printar Conteudo Response

Cenario: POST Cadastrar Carrinho 201
    [tags]    POSTCARRINHO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /carrinhos
    Validar Status Code "201"
    Validar Se Mensagem Contém "sucesso"

Cenario: GET Buscar Carrinho por ID 200
    [tags]    GETCARRINHOID
    Criar Sessao
    GET Endpoint /carrinhos/{_id}
    Validar Status Code "200"
    Printar Conteudo Response

Cenario: POST Logar Usuario de Massa Estatica 200
    [tags]    POSTLOGINUSUARIOESTATICO
    Criar Sessao
    Logar Usuario Estatico Valido
    Validar Status Code "200"
    
*** Keywords ***
Criar Sessao
    Create Session        serverest    https://serverest.dev