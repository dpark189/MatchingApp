FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    sequence(:username) { |n| "username1" }
    first_name 'John'
    last_name 'Smith'
    password 'password'
    password_confirmation 'password'
  end
end
