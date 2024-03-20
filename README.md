# Testes Automatizados com Robot Framework e Selenium

Este repositório contém testes automatizados utilizando o framework Robot em conjunto com Selenium. Os testes foram desenvolvidos para validar o comportamento da página de login para garantir sua integridade e funcionalidade.

## Requisitos

Certifique-se de ter os seguintes softwares instalados em sua máquina:

- [Python](https://www.python.org/)
- [Robot Framework](https://robotframework.org)
- [Selenium](https://github.com/robotframework/SeleniumLibrary/)
- [Web Driver Manager](https://github.com/MarketSquare/webdrivermanager)

## Configuração

1. Clone este repositório para sua máquina local:

```
git@github.com:mariosilva81/robotframework-web.git
```

2. Navegue até o diretório do projeto:

```
cd robotframework-web
```

3. Instale o Python em sua máquina, caso ainda não tenha:

- Baixe o instalador do Python em [python.org](https://www.python.org/downloads/).
- Siga as instruções de instalação do Python para o seu sistema operacional.

2. Instale o Robot Framework e as bibliotecas necessárias via pip:

```bash
pip install robotframework
pip install --upgrade robotframework-seleniumlibrary
pip install webdrivermanager
```

3. Configure os drivers dos navegadores utilizando o WebDriverManager:

```bash
webdrivermanager chrome --linkpath /usr/local/bin
```

Substitua `/usr/local/bin` pelo diretório onde deseja armazenar os drivers.

De forma alternativa, poderá baixar o Web Driver do Chrome em `https://chromedriver.chromium.org/downloads`.

## Executando os Testes

Para executar os testes, utilize o seguintes comando:

```bash
robot -d reports/log .
```

Substitua `reports/log` pelo diretório onde deseja armazenar os relatórios.

## Contribuindo

Sinta-se à vontade para contribuir com novos testes, melhorias ou correções de bugs. Basta fazer um fork deste repositório, fazer suas alterações e enviar um pull request.

## Recursos Adicionais

Para mais informações sobre o Robot Framework, consulte a [documentação oficial](https://robotframework.org).
