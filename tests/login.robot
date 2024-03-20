*** Settings ***

Resource                            ./resources/login.resource


*** Test Cases ***

Scenario 1: Successful login attempt
    [Tags]                          smoke-test
    Open website
    Click button                    xpath=//*[@id="top_header"]/div/div/div[2]/div/ul/li[1]/a
    Enter input data                id:user            teste@teste.com
    Enter input data                id:password        123456
    Click button                    id:btnLogin
    Validate text                   id:swal2-title     Login realizado
    Screenshot                      Scenario1

Scenario 2: Unsuccessful login attempt - email missing
    [Tags]                          smoke-test
    Open website
    Click button                    xpath=//*[@id="top_header"]/div/div/div[2]/div/ul/li[1]/a
    Enter input data                id:password        123456
    Click button                    id:btnLogin
    Validate text                   xpath=//*[@id="login_area"]/div/div/div/div/div[1]/span     E-mail inválido.
    Screenshot                      Scenario2

Scenario 3: Unsuccessful login attempt - password missing
    [Tags]                          smoke-test
    Open website
    Click button                    xpath=//*[@id="top_header"]/div/div/div[2]/div/ul/li[1]/a
    Enter input data                id:user            teste@teste.com
    Click button                    id:btnLogin
    Validate text                   xpath=//*[@id="login_area"]/div/div/div/div/div[2]/span     Senha inválida.
    Screenshot                      Scenario3