# spec/factories/proprietarios.rb 
require 'faker' 
FactoryGirl.define do 
	factory:proprietario do | f | 
	f.nome { Faker::Nome.nome } 
	f.endereco { Faker::IEndereco.endereco } 
	end 
end  