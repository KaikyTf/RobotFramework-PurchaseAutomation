# 🤖 RobotFramework-PurchaseAutomation

Este repositório contém um projeto de automação de testes utilizando **Robot Framework** e **SeleniumLibrary**, focado na simulação de um processo de compra no site `https://www.rockauto.com/`.

O projeto foi desenvolvido como parte do curso realizado durante a **Infoeste 2025**.

---

## 🎯 Objetivo

O principal objetivo é automatizar o fluxo completo de uma compra, desde a abertura do navegador até a seleção final da forma de pagamento, passando pela seleção de peças e preenchimento de formulários de envio.

---

## 🚀 Estrutura do Projeto

O projeto é organizado em diversos arquivos `.robot` que se comunicam através de *Resources*.

| Arquivo | Conteúdo Principal | Descrição |
| :--- | :--- | :--- |
| `Project/main.robot` | Configurações (`*** Settings ***`) | Define a configuração inicial do teste, abrindo o navegador **Firefox**, e importa os demais arquivos de recurso (variáveis, bibliotecas e casos de teste). |
| `Project/librariaes.robot` | Bibliotecas (`*** Settings ***`) | Importa a biblioteca principal para a automação web: `SeleniumLibrary`. |
| `Project/variables.robot` | Variáveis (`*** Variables ***`) | Define a variável global `${site}` com a URL da loja a ser automatizada: `https://www.rockauto.com/`. |
| `Project/keywords.robot` | Keywords (`*** Keywords ***`) | Contém toda a lógica de negócio do teste, dividida em Keywords reutilizáveis como `Abrir site`, `Selecionar pecas`, `Preencher form`, etc.. |
| `Project/teste.robot` | Casos de Teste (`*** Test Cases ***`) | Define o fluxo de teste principal, encadeando as Keywords para executar a compra automatizada (`Teste 01`). |

---

## ⚙️ Sequência de Execução

O caso de teste principal (`Teste 01` em `teste.robot`) executa as seguintes etapas:

1.  **`Abrir site`**: Navega para a URL definida e maximiza a janela do navegador.
2.  **`Rolar e clicar na marca`**: Rola a página e clica para selecionar uma marca específica.
3.  **`Selecionar ano e modelo`**: Clica em três elementos subsequentes para definir o ano e o modelo do veículo.
4.  **`Selecionar pecas`**: Adiciona duas peças ao carrinho.
    * **Peça 1**: Navega e adiciona um item.
    * **Peça 2**: Recarrega a página, navega e adiciona outro item.
5.  **`Preencher form`**: Preenche os campos de envio (nome, endereço, cidade, CEP), clica para calcular o frete, alterna para o carrinho principal e preenche dados adicionais (Estado, telefone, email).
6.  **`Pagamento`**: Clica para calcular o frete, clica em "Place Order", seleciona a forma de pagamento **Wire Transfer** e finaliza o pedido clicando novamente em "Place Order".

---

## 🛠 Como Executar

#### Pré-requisitos

1.  **Python** instalado.
2.  **Robot Framework** e **SeleniumLibrary** instalados (geralmente via `pip`).
3.  **Geckodriver** (para o Firefox) configurado no PATH do sistema.

#### Execução do Teste

Navegue até o diretório `Project/` no seu terminal e execute o arquivo de casos de teste:

```bash
robot teste.robot
