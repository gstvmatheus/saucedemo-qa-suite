<h1 align="center" style="font-weight: bold;">SauceDemo QA Suite</h1>
<h3 align="center" style="font-weight: bold;">Este repositório contém uma suíte completa de testes para o e-commerce <a href="https://www.saucedemo.com/">SauceDemo</a>, cobrindo desde a documentação de cenários de teste até a automação E2E e validações de banco de dados.</h3>

<hr>

### Tecnologias:
![Cypress](https://img.shields.io/badge/cypress-%23E5E5E5.svg?style=for-the-badge&logo=cypress&logoColor=058a5e)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![Cucumber/BDD](https://img.shields.io/badge/Gherkin/BDD-%2300B140.svg?style=for-the-badge&logo=cucumber&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300000f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)

### Destaques:
* **Automação E2E:** testes de fluxo ponta a ponta desenvolvidos em Cypress.
* **BDD / Gherkin:** escrita de cenários de testes orientados a comportamento.
* **Validação SQL:** queries para verificação de integridade e massa de dados.
* **Bug Reporting:** mapeamento técnico e documentação padronizada de falhas.

### Estrutura do projeto:

```text
saucedemo-qa-suite/
├── cypress/
│   └── e2e/
│       └── compra.cy.js          # Automação E2E do fluxo de compra
├── database/
│   └── queries_validacao.sql     # Consultas SQL para validação de dados
├── docs/
│   ├── BUG_REPORT.md             # Relatório detalhado de falhas encontradas
│   └── fluxo_compra.feature      # Especificação de cenários em BDD/Gherkin
├── .gitignore
├── cypress.config.js
└── package.json
