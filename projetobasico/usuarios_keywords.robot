*** Settings ***
Documentation    Keywords e Variaveis para Ações do endpoint de Usuarios
Library    RequestsLibrary
Resource    ./common.robot

*** Variables ***
${nome_do_usuario}    hebert richards
${senha_do_usuario}    teste123
${email_do_usuario}    testetesteteste@gmail.com
${response}
&{payload}
${id_usuario}    0uxuPY0cbmQhpEz1

*** Keywords ***
GET Endpoint /usuarios
    ${response}    GET On Session    Serverest    /usuarios
    Set Global Variable    ${response}

POST Endpoint /usuarios
    ${response}    POST On Session    Serverest    /usuarios    json=&{payload}
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}

PUT Endpoint /usuarios
    &{payload}    Create Dictionary    nome=Jerson Prist    email=testeiuprewassll@gmail.com    password=321    administrador=true
    ${response}    PUT On Session    Serverest    /usuarios/2jIQzTsJ0v8wO6kD    data=&{payload}
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}
DELETE Endpoint /usuarios
    ${response}    DELETE On Session    Serverest    /usuarios/JKqhzrso0V4sAH57
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}

GET Endpoint /usuarios/{_id}
    ${response}    GET On Session    Serverest    /usuarios/${id_usuario}
    Set Global Variable    ${response}

Validar Quantidade "${quantidade}"
    Should Be Equal    ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contém "${palavra}"
    Should Contain    ${response.json()["message"]}    ${palavra}

Criar Usuario Estatico Valido
    ${json}    Importar JSON Estatico    json_usuario_ex.json
    ${payload}    Set Variable    ${json["user_valido"]}
    Set Global Variable    ${payload}
    POST Endpoint /usuarios

Validar Ter Cadastrado Usuario
    Should be Equal    ${response.json()["message"]}    Cadastro realizado com sucesso
    Should Not Be Empty    ${response.json()["_id"]}
