# [BUG-001] Ausência de validação no formato do CEP (Postal code)

## Descrição
O campo do cep no checkout aceita qualquer tipo de caractere (letras, símbolos e espaços) sem aplicar uma máscara de validação de formato postal.

## Ambiente
- **URL:** https://www.saucedemo.com/checkout-step-one.html
- **Navegador:** Google Chrome
- **Sistema Operacional:** Windows 11
- **Ambiente:** QA / Testes 

## Passos para reproduzir
1. Acesse o site https://www.saucedemo.com.
2. Faça login com o usuário `standard_user`.
3. Adicione um produto ao carrinho e acesse o carrinho.
4. Clique em **Checkout**.
5. Preencha os campos **First Name** e **Last Name** com dados válidos.
6. Preencha o campo **Zip/Postal Code** com caracteres inválidos (ex: `AAAAA` ou `!!!`).
7. Clique no botão **Continue**.

## Resultado esperado
O sistema deve validar a estrutura do CEP e impedir o avanço do pedido, exibindo uma mensagem de erro indicando formato inválido de código postal.

## Resultado obtido
O sistema aceita o CEP inválido e avança normalmente para a tela de confirmação de pagamento.

## Severidade & Prioridade
- **Severidade:** Alta
- **Prioridade:** Média

## Anexos / Evidências
- Validação manual realizada na etapa de checkout do fluxo principal de compras.