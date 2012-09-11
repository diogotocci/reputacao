# spec/models/cliente_spec.rb 
require 'spec_helper'
describe Cliente do
	it "has a valid factory" do
		Factory.create(:cliente).should be_valid 
	end
	it "is invalid without a name" do
		Factory.build(:cliente, nome:nil).should_not be_valid
	end
	it "is invalid without an yearold" do 
		Factory.build(:cliente, idade:nil).should_not be_valid 
	end 
	it "returns a contact's full name as a string" 
end 