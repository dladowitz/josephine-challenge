FactoryGirl.define do
  factory :user do
    first_name "Jane"
    last_name "Doe"
    sequence(:email) {|n| "person#{n}@example.com" }
    password 'password'
  end
end
