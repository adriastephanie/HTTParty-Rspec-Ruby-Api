# HTTParty-Rspec-Ruby-Api
Teste de APIs com HTTParty, Rspec, e linguagem Ruby.

# Plugin VS CODE

- Ruby for Visual Studio Code
- Snippets and Syntax Highlight for Gherkin (Cucumber)
- Gherkin Indent
- vscode-icons

# Teoria 

 - RSpec: RSpec é uma biblioteca (gem) que facilita a prática de testes em aplicações Ruby ou Rails, oferecendo uma sintaxe de fácil compreensão e uma gigante quantidade de opções pra escrever e executar testes em uma aplicação.

Boas praticas: https://www.betterspecs.org

- Describe: Describe é usado para explicar o que está sendo trabalhado. Normalmente, você descreverá uma classe e ela envolverá todas as chamadas. 

- It: são os casos de teste que são executados dentro do bloco de Describe.

- Context: Faz a mesma coisa que o Describe e permite contextualizar um bloco de teste.

- Let: Ao definir uma variável fazendo uso de let ela não é imediatamente criada em memória, ou seja, let é lazy loading. Depois da primeira execução o valor da variável fica armazenado em cache até que o teste termine. Quando a variável for chamada novamente irá apenas utilizar esse valor armazenado sem precisar executar novamente. Quando teste terminar, o valor da variável irá morrer do cache.

# Execução

Entrar no projeto
```sh
cd httparty-rspec-ruby/
```

Para criar estrutura das pastas do projeto
```sh
rspec --init 
```

Para verificar se vai funcionar
```sh
rspec
```

# Documentação da API

https://apidetarefas.docs.apiary.io/#
