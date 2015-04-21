FactoryGirl.define do
  factory :ingredient do
    association :recipe
    quantity "1"
    measurement "Dozen"
    name "Apples"
  end
end
