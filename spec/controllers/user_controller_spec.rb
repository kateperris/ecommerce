require 'rails_helper'
require 'spec_helper'

describe UsersController, :type => :controller do 
  # create test user
  before do
    # Always use factory data generators such as FactoryGirl
    @user = FactoryGirl.create(:user)
    @usertwo = FactoryGirl.create(:user)
  end

  describe "GET #show" do
    before do
      sign_in(@user)
    end

    context "Loads correct user details" do

      it "Gets Logged in User details" do       

        get :show, @user.id
		  expect(response).to have_http_status(200)
		  expect(assigns(:user)).to eq @user
      end
    end
  

  describe "Unauthorized access when"

    context "No user is logged in" do 
      it "redirects to login" do
        get :show, id: @user.id

        expect(response).to redirect_to(new_user_session_path) 
      end
    end
  end

  describe "GET Unauthorized page" do
    before do
      sign_in(@user)
    end

    
    context "Attempt to access show page of usertwo" do
      it "redirects to login" do 
        get :show, id: @usertwo.id
  expect(response).to have_http_status(401)
  expect(response).to redirect_to(root_path)
      end
    end
  end
end



