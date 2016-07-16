require 'rails_helper'

RSpec.describe MealsController, type: :controller do
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

      context "With meals in the the database" do

        it "should not include meals created by the user" do
          subject
          expect(assigns(:meals)).not_to include my_meal
        end

        it "should indclude meals by all other users" do
          subject
          expect(assigns(:meals)).to include others_meal
        end
      end
    end

    context 'with NO logged in user' do
      it "returns the login page" do
        subject
        expect(response).not_to render_template :index
      end
    end
  end

  describe "GET #show" do
    subject { get :show, id: others_meal.id }

    context 'with a logged in user' do
      before { session[:user_id] = user.id }

      it "returns the show template" do
        subject
        expect(response).to render_template :show
      end

      it "finds the correct meal" do
        subject
        expect(assigns(:meal).title).to eq others_meal.title
      end
    end

    context 'with NO logged in user' do
      it "returns the login page" do
        subject
        expect(response).not_to render_template :show
      end
    end
  end
end
