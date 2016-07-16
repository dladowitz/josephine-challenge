require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  let(:other_user) { FactoryGirl.create(:user) }
  let!(:my_meal) { FactoryGirl.create(:meal, user: user)}
  let!(:others_meal) { FactoryGirl.create(:meal, user: other_user)}

  describe "POST #create" do
    context 'with a logged in user' do # since this is going to be used often I'd build out: it_behaves_like "requires sign in"
      before { session[:user_id] = user.id }
      subject { post :create, meal_id: others_meal.id, order: { notes: "No Hot Sause Please" } }

      it "creates an order in the database" do
        expect{ subject }.to change{ Order.count }.by 1
      end
    end
  end
end
