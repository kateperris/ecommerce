require 'spec_helper'



describe Product do
	context "when the product has comments"
	before do
		@product = Product.create!(name: "race bike")
		@user = User.create!(email: "john@example.com", password: "test1234")
		@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		@product.comments.create!(rating: 3, user: @user, body: "Okay bike!")
		@product.comments.create!(rating: 5, user: @user, body: "Awesome bike!")
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid without name" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

end


 
 describe Product do 
 	context "when the product has comments"
    before do
 		@product = Product.create!(name: "race bike")
 		@user = User.create!(email: "john@example.com", password: "test1234")
 		@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
 		@product.comments.create!(rating: 3, user: @user, body: "Okay bike!")
 		@product.comments.create!(rating: 5, user: @user, body: "Awesome bike!")
 	end
 
 	it "returns the average rating of all comments" do
 		expect(@product.average_rating).to eq 3
 	end
 
 	it "is not valid without name" do
 		expect(Product.new(description: "Nice bike")).not_to be_valid
 	end
 
 end

