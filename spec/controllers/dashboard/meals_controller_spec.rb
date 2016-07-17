require 'rails_helper'

RSpec.describe Dashboard::MealsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  let(:other_user) { FactoryGirl.create(:user) }
  let!(:my_meal) { FactoryGirl.create(:meal, user: user)}
  let!(:others_meal) { FactoryGirl.create(:meal, user: other_user)}

  describe "GET #index" do
    subject { get :index }

    # since this is goig to be used often I'd build out: it_behaves_like "requires sign in"
    context 'with a logged in user' do
      before { session[:user_id] = user.id }

      it "returns the index template" do
        subject
        expect(response).to render_template :index
      end

      it "should find the correct user" do
        subject
        expect(assigns(:user)).to eq user
      end

      it "should find all my meals" do
        subject
        expect(assigns(:meals).count).to eq user.meals.count
      end
    end
  end

  describe "GET #show" do
    subject { get :show, id: my_meal.id }

    # since this is goig to be used often I'd build out: it_behaves_like "requires sign in"
    context 'with a logged in user' do
      before { session[:user_id] = user.id }

      it "returns the show template" do
        subject
        expect(response).to render_template :show
      end

      it "should find the correct user" do
        subject
        expect(assigns(:user)).to eq user
      end

      it "should find the correct meal" do
        subject
        expect(assigns(:meal)).to eq my_meal
      end
    end
  end
end
