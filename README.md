# Fake Twitter


# Tecnologias

Para desenvolver o projeto foi usado as tecnologias: Ruby on Rails, JavaScript, Postgresql e Bootstrap

### Pré-requisitos

Para rodar o projeto na sua máquina, deve ter instalado o ruby '2.5.8' e o 'rails', '~> 6.0.3' e Postgres

```
gem 'rails', '~> 6.0.3', '>= 6.0.3.5'
Postgresql 
```

Na sua máquina execute os comandos:
```
bundle install
yarn install
```

Obs:  
 

Em seguida crie sua base de dados com comandos:

```
rails db:create
rails db:migrate
```
Test:<br>
para rodar os testes de acordo com model desejádo rode o comando<br>
ex:
```
rspec spec/model/user_spec.rb

```

Para subir o projeto local execute:
```
rails s
```

