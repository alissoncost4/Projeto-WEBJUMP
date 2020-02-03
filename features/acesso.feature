#language: pt

Funcionalidade: Testando o site - Webjump.
    Automatizar um teste onde verificaremos algumas funções do site
    de testes da webjump, executando alguns cliques e preenchendo alguns campos.

    
    Cenario: Clicar nos botões do painel Buttons.

        Dado que estamos na pagina inicial do site
        Quando eu clico em "One", "Two", e "Four"
        Entao válido a ausência dos mesmos.

    
    Cenario: Clicar nos botões do painel IFrame Buttons.

        Dado que estamos na pagina inicial do site
        Quando eu clico em "One", "Two", e "Four" no painel IFrame Buttons
        Entao válido a ausência dos mesmos.

    
    Cenario: Validação dos componentes da Tela.

        Dado que estamos na pagina inicial do site
        Quando preencho o campo YourFirstName com 'Alisson'
        E clico no botão "One"
        E flego a opção OptionThree
        E seleciono a opção ExampleTwo dentro da Select box
        Entao válido a imagem da Selenium-Webdriver
        
