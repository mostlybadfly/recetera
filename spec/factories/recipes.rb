FactoryGirl.define do
  factory :recipe do
    title Faker::Lorem.words(1..10).map(&:titlecase).join(' ')
    instructions "Peel the apples."
    factory :recipe_with_ingredients do
      after(:build) do |recipe|
        recipe.ingredients = FactoryGirl.build_list(:ingredient,
                                                     3,
                                                     recipe: recipe)
        recipe.save
      end
    end
  end
end
