require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    context 'successfully' do
      before(:each) do
        post :create, email: user.email, password: user.password
      end
      it 'logs in an existing user and redirects to homepage' do
        should redirect_to(meals_path)
      end
    end

    context 'unsuccessfully' do
      before(:each) do
        post :create, email: 'fake@user.com', password: 'password'
      end
      it 'redirects to login page' do
        should redirect_to(login_path)
      end
    end
  end

  describe "GET #destroy" do
    before(:each) { get :destroy }
    it "redirects to root path" do
      should redirect_to(root_path)
    end
  end

end
