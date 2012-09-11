# spec/models/proprietrio_spec.rb 
require 'spec_helper'

describe "Proprietario" do
	describe "Proprietario Manager" do
		it "Adds a new Proprietario and display the results" do
			visit "/proprietarios"
			expect{
				click_link 'Inserir Novo'
					fill_in 'Nome', with: 'Francis Berenger'
					fill_in 'Nacionalidade', with: 'Espanhol'
					click_button "Adicionar"
			}.to change(Proprietario,:count).by(1)
			page.should have_content "Francis Berenger"
			page.should have_content "Espanhol"
		end	
	end			
	it "has a valid factory proprietario" do
		FactoryGirl.create(:proprietario).should be_valid 
	end
	it "is invalid without a name" do
		FactoryGirl.build(:proprietario, nome:nil).should_not be_valid
	end
	it "is invalid without a nacionality" do 
		FactoryGirl.build(:proprietario, nacionalidade:nil).should_not be_valid 
	end
	it "is invalid when a name starts with a lower case" do
		FactoryGirl.build(:proprietario, nome: 'mahatma ghandi').should_not be_valid
	end
end