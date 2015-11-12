# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe_item do
    amount 1
    user nil
    ingredient nil
  end
end
