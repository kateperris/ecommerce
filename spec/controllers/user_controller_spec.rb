require 'rails_helper'

	describe UsersController, :type => :controller do 
	  before do
		@user = User.create!(email: "joe@bloggs.com", password: "test12345")
	  end

	describe "GET #show" do
		context "User is logged in" do
			before do
				sign_in @user
			end

		it "Loads correct user details" do
			get :show, id: @user.id
			expect(response).to have_http_status(200)
			expect(assigns(:user)).to eq @user
		end
	end

		context "No user is logged in" do
			 it "redirects to login" do
				get :show, id: @user.id
				expect(response).to redirect_to(root_path)
			end


	before do
		@usertwo = User.create!(email: "red@blue.com", password: "password123")	  
	end

		context "User cannot see incorrect show page" do
			before do
				sign_in @user
			end

			it "redirects to user#index" do
				get :how, id: @usertwo.id
				expect(response).to redirect_to(root_path)
		end
		
	  end
	end

end

end
