# spec/factories/clientes.rb 
 
FactoryGirl.define do 
	factory :cliente do | f | 
	  f.nome "John" 
	  f.idade "24" 
	end 
	
	factory :invalid_cliente, parent: :cliente do |f|
	  f.nome nil
	end  
end  