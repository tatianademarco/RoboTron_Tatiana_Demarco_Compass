*** Settings ***
Documentation    Keywords e Variaveis para Ações do endpoint de Usuarios
Library    RequestsLibrary

*** Variables ***
${token_auth}
${id_produto} 
${response.json()["_id"]}
${response.json()["message"]} 

*** Keywords ***
GET Endpoint /produtos
    ${response}    GET On Session    Serverest    /produtos
    Set Global Variable    ${response}

GET Endpoint /produtos/{_id}
    ${response}    GET On Session    Serverest    /produtos/BeeJh5lz3k6kSIzA
    Set Global Variable    ${response}
POST Endpoint /produtos
    &{header}    Create Dictionary    Authorization=${token_auth}
    &{payload}    Create Dictionary    nome=Proce    preco=900    descricao=i7    quantidade=100
    ${response}    POST On Session    Serverest    /produtos    data=&{payload}    headers=${header}
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}
    ${id_produto}    Set Variable    ${response.json()["_id"]}
    Log To Console    ID Produto: ${id_produto}
    Set Global Variable    ${id_produto}

PUT Endpoint /produtos
    &{header}    Create Dictionary    Authorization=${token_auth}
    &{payload}    Create Dictionary    nome=Proce    preco=850    descricao=i5    quantidade=68
    ${response}    PUT On Session    Serverest    /produtos/${id_produto}    data=&{payload}
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}

DELETE Endpoint /produtos
    &{header}    Create Dictionary    Authorization=${token_auth}
    ${response}    DELETE On Session    Serverest    /produtos/${id_produto}    headers=${header}
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}