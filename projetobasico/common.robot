*** Settings ***
Documentation    Keywords e variaveis para ações gerais
Library    OperatingSystem

*** Variables ***
${response}

*** Keywords ***
Printar Conteudo Response
    Log To Console    Nome: ${response}
    
Validar Status Code "${statuscode}"
    Should Be True    ${response.status_code} == ${statuscode}

Importar JSON Estatico
    [arguments]    ${nome_arquivo}
    ${arquivo}    Get File    ${EXECDIR}/${nome_arquivo}
    ${data}    Evaluate    json.loads('''${arquivo}''')    json
    [Return]    ${data}