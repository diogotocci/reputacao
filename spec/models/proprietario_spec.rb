# spec/models/proprietrio_spec.rb 
require 'spec_helper'
describe Proprietario do
	it "has a valid factory" do
		Factory.create(:proprietario).should be_valid 
	end
	it "is invalid without a name" do
		Factory.build(:proprietario, nome:nil).should_not be_valid
	end
	it "is invalid without an address" do 
		Factory.build(:proprietario, endereco:nil).should_not be_valid 
	end 
	it "returns a contact's full name as a string" 
end 