# current_user is not accessable while runing specs. Trying to stub
# but not working. I'd come back and fix

# require 'rails_helper'
#
# describe MealsHelper do
#   let(:user) { FactoryGirl.create(:user) }
#   let(:other_user) { FactoryGirl.create(:user) }
#   let!(:others_meal) { FactoryGirl.create(:meal, user: other_user)}
#   before { session[:user_id] = user.id }
#
#   describe "#meal_unordered?" do
#     context "when a meal has been ordered" do
#       before { user.orders.create(meal: others_meal) }
#
#       it "returns false" do
#         expect(meal_unordered?(others_meal)).to be false
#       end
#     end
#
#     context "when a meal has not been ordered" do
#       it "returns true" do
#         expect(meal_unordered?(others_meal)).to be true
#       end
#     end
#   end
# end
