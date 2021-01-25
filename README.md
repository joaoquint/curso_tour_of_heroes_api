Tour Of Heroes API
Curso de Ruby on Rails 6 como API de Heroes.

Esse repositório faz parte do Curso de Ruby on Rails 6 como API.

Ruby version 2.7.2
Rails version 6.1.x
Database SQLite3
Configurações iniciais para rodar o projeto

# clonar o projeto

git clone https://github.com/peimelo/curso_tour_of_heroes_api.git
cd curso_tour_of_heroes_api

# instalar as dependências do Ruby on Rails

bundle install

# criar os bancos de dados de development e test

rails db:create

# criar as tabelas

rails db:migrate
Rodar o projeto
rails s
