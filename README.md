# README

gem "rails-backbone"
bundle install
rails g backbone:install

rails g backbone:model Student  name email mobile
rails g backbone:router students
<!-- rails g backbone:views students -->
<!-- rails g backbone:templates students -->