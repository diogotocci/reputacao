# spec/factories/clientes.rb 
require 'faker' 
FactoryGirl.define do 
	factory :cliente do | f | 
	f.nome { Faker::Nome.nome } 
	f.idade { Faker::Idade.idade } 
	end 
end  