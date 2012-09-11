# spec/models/cliente_spec.rb 
require 'spec_helper'

describe "Clientes" do
	describe "Clientes Manager" do
		it "Adds a new Cliente and display the results" do
			visit "/clientes"
			expect{
				click_link 'Inserir Novo'
					fill_in 'Nome', with: 'Pedro de Lara'
					fill_in 'Idade', with: '23'
					click_button "Adicionar"
			}.to change(Cliente,:count).by(1)
			page.should have_content "Pedro de Lara"
			page.should have_content "23"
		end	
	end			
	it "has a valid factory cliente" do
		FactoryGirl.create(:cliente).should be_valid 
	end
	it "is invalid without a name" do
		FactoryGirl.build(:cliente, nome:nil).should_not be_valid
	end
	it "is invalid without an yearold" do 
		FactoryGirl.build(:cliente, idade:nil).should_not be_valid 
	end 
	
end 