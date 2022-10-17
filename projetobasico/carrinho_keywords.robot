*** Settings ***
Documentation    Keywords e Variaveis para Ações do endpoint de Carrinho
Library    RequestsLibrary

*** Variables ***
${token_auth}
${id_produto}

*** Keywords ***
GET Endpoint /carrinhos
    ${response}    GET On Session    Serverest    /carrinhos
    Set Global Variable    ${response}

POST Endpoint /carrinhos
    &{header}    Create Dictionary    Authorization=${token_auth}
    &{payload}    Create Dictionary    idProduto=BeeJh5lz3k6kSIzA    quantidade=1
    ${response}    POST On Session    serverest    /carrinhos    data=&{payload}    headers=${header}
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}
    

GET Endpoint /carrinhos/{_id}
    ${response}    GET On Session    Serverest    /carrinhos/qbMqntef4iTOwWfg
    Set Global Variable    ${response}