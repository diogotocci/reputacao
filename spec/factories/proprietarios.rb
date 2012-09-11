# spec/factories/proprietarios.rb 

FactoryGirl.define do 
	factory:proprietario do | f | 
		f.nome "Fabio" 
		f.nacionalidade "Africano" 
	end
	factory :invalid_proprietario, parent: :proprietario do |f|
		f.nome nil
	end
end  