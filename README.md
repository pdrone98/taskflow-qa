# TaskFlow QA

Projeto de portfólio QA — automação de testes com Cypress, BDD, 
validação SQL e testes de API, performance e segurança.

---

## 🛠️ Tecnologias utilizadas

- Cypress
- Cucumber (BDD / Gherkin)
- Node.js
- SQLite
- Postman
- Jira (gestão do projeto)
- GitHub Actions (CI/CD)

---

## 📁 Estrutura do projeto

taskflow-qa/
├── .github/workflows/     ← GitHub Actions
├── cypress/
│   ├── e2e/               ← testes .cy.js e .feature
│   ├── fixtures/          ← dados de teste em JSON
│   ├── reports/           ← relatórios Mochawesome
│   └── support/           ← commands e configurações globais
├── docs/
│   ├── casos-de-teste.md  ← cenários de teste documentados
│   └── queries.sql        ← queries de validação SQL
├── cypress.config.js
└── package.json

---

## 📝 Convenção de commits

Este projeto segue o padrão 
[Conventional Commits](https://www.conventionalcommits.org/pt-br/).

### Tipos

| Tipo | Descrição |
|---|---|
| `feat` | Nova funcionalidade ou teste adicionado |
| `test` | Criação ou ajuste de cenários de teste |
| `fix` | Correção de um teste ou configuração quebrada |
| `docs` | Alterações no README ou documentação |
| `chore` | Tarefas de manutenção sem impacto nos testes |
| `refactor` | Reorganização de código sem mudar comportamento |
| `ci` | Configurações de pipeline e GitHub Actions |

---

## 🚀 Como executar os testes

Em breve — será atualizado

---

## 📊 Relatórios

Em breve — será atualizado
