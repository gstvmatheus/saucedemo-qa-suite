# language: pt

Funcionalidade: fluxo de compra E2E no e-commerce SauceDemo
  Como um cliente da loja online
  Quero adicionar produtos ao carrinho e preencher os dados de entrega
  Para concluir meu pedido com sucesso

  Contexto:
    Dado que o usuário esteja na página inicial do e-commerce "https://www.saucedemo.com"

  Cenário: realizar compra de produto com sucesso
    Quando o usuário insere as credenciais válidas:
      | usuario | standard_user |
      | senha   | secret_sauce  |
    E clica no botão "Login"
    Então deve ser redirecionado para a página de catálogo de produtos
    
    Quando adiciona o item "Sauce Labs Backpack" ao carrinho
    E navega até a tela do carrinho de compras
    Então o item "Sauce Labs Backpack" deve estar visível na lista

    Quando clica no botão "Checkout"
    E preenche as informações de entrega:
      | Nome      | Gustavo   |
      | Sobrenome | Tester    |
      | CEP       | 59000-000 |
    E clica em "Continue"
    E confirma o pedido clicando em "Finish"
    Então deve visualizar a mensagem de confirmação "Thank you for your order!"