FactoryGirl.define do
  factory :recipe do
    title "Apple Pie"
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
