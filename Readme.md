# Desafio Zupper 🚀

## *Automação de Testes com Ruby* 

### Nesse projeto utilizamos: 

* Ruby: linguagem de fácil entendimento, com uma baixa curva de aprendizado. Tem suporte para automações WEB, API e Mobile (utilizando appium);
* Capybara: DSL com suporte integrado ao Selenium;
* Cucumber: suporta implementação de especificações em formato estruturado usando Gherkin;
* Logs: contem os reports gerados pela execução dos testes;
* Page Objects Model: utilizando na pasta pages para encapsulamento e segmentação de responsabilidades, temos um ganho na organização e reaproveitamento de código nas páginas, conforme numero de features vão sendo criadas;
* Selenium Webdriver: gem que possibilita as interações através do chromedriver com o navegador;
* Rspec: gem que possibilita usar asserções de forma mais intuitiva.

> Estrutura do Projeto: 📂

- features: contem as pastas de Steps definitions e Support;
- Steps: onde implementamos os steps gerados pelo cucumber;
- Support: onde inserimos nossa .
- Pages: implementação do Page Objects separando as classes distintas por arquivos ruby
- **report.html:** Relatório de execução dos testes em formato HTML.


> Pré-requisitos ⚡

**Ruby** _ baixar a versão recomendada 3.1.2
**Chromedriver** _ baixar a de acordo com a versão do navegador

Instalação ⚙️

- Bundler:
Rodar o seguinte comando para atualização do bundler: ```gem install bundler```
- Gems utilizadas:
⚠️ Com o repositório devidamente clonado, entrar no diretório raiz do projeto com o terminal e rodar o seguinte comando para instalação das gems do projeto: ```bundle install```

> Como rodar a automação 🔥

Com as gems instaladas, ainda dentro do diretório raiz do projeto (desafio_zupper_web), executar o comando abaixo para rodar o Cenário **Busca de passagens aéreas de ida e volta para 2 Adultos, 1 Criança e 1 Bebê** no terminal:

```bundle exec cucumber --tags '@smoke'```

Os cenários `@smoke @producao` são exclusivamente de consulta: validam os
campos do motor de busca, as modalidades ida e volta/só ida/multidestinos e a
abertura do calendário. Eles não enviam uma pesquisa, não selecionam oferta,
não acessam checkout e não enviam pagamento. Foram derivados dos cenários de
motor de busca do projeto `zupper-e2e-website` e atualizados para a interface
atual de produção.

Os cenários antigos de hospedagem, pacotes e busca foram preservados como
`@pendente`, pois ainda não possuem steps implementados para a interface atual.
Eles não são executados no perfil padrão.

> Reports 📂

- Ao finalizar a execução, o report HTML report.html será gerado na pasta logs e as evidencias .png estarão na raiz do projeto. 

> **Observações do BDD ⚠️**

***Cenário Busca de passagens aéreas:*** que foi automatizado descreve o fluxo básico de uma busca bem-sucedida, sem considerar casos de erro ou funcionalidades adicionais (filtros, erros, etc.).

Neste cenário envolveu a interação com os elementos da página, inclusive com Iframe iniserido no projeto (campos de entrada, botões, etc.) e verificar se os resultados exibidos estão corretos.

***Esquema de cenários:*** tipo de formato que usa a matriz de Exemplos para consumir os dados e cada linha da tabela é uma cenário executado. 

No projeto descrevi muitos cenários de sucesso para Busca de Voos e outros arquivos com pelo menos um cenário de sucesso para hospedagem e pacotes.


> Oportunidade de melhoria no site: 

1. Após clique na busca, o comportamento do site apresenta um loading (para espera de carregamento) e ao mesmo tempo possui um shimmer no carregamento de cada card por trás desse loading, que deixa e tela com um sombreamento (burl), as informações do resultado da busca chegam a carregar dentro dos cards antes da saida desse loading no centro da tela e isso poderia ser melhorado, para que a automaçã ode testes fosse ainda mais rápida.  

> Melhorias para esse projeto de automação: 

1. Criar um arquivo UtilPage.rb dentro de pages para incluir metodos gennéricos como tirar screenshot, realizar swipe (scroll), busca de arquivos, consultas de endpoints em APIs para geração de massas de testes;
2. Deixar projeto multibrowser para rodar no firefox, Edge e outros navegadores;
3. Criar arquivo na estrutura para separar os elementos por paginas dentro de .yml;
4. Criar arquivo na estrutura para colocar arquivos com dados de massa de testes .yml
