describe "GET 'Home'" do
	it "returns http success" do
		get 'home'
		response.should be_success
	end
	
	it "should have the right title" do
		get 'home'
		response.should have_selector("title", :content => @base_title + "Home")
	end
end