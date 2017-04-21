FactoryGirl.define do
 factory :user do
   email Faker::Internet.email
   password Faker::Internet.password
   first_name Faker::Name.first_name
   username Faker::Internet.user_name
   location Faker::Internet.user_name
 end
end
