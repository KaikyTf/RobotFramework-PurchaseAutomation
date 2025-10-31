*** Settings ***

Resource    main.robot
Resource    keywords.robot
Test Setup  Open Browser   browser=firefox

*** Test Cases ***
Teste 01
    Abrir site
    Rolar e clicar na marca
    Selecionar ano e modelo
    Selecionar pecas
    Preencher form
    Pagamento

    