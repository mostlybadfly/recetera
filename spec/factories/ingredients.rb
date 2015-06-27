FactoryGirl.define do
  factory :ingredient do
    association :recipe
    quantity Faker::Number.number(3)
    measurement Faker::Lorem.word
    name  Faker::Lorem.word 
  end
end
