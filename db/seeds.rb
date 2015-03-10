User.create!([
  {email: "test@test.com", encrypted_password: "$2a$10$650uIaxKcf.NfG2n35y6Q.uTjOwXeZrt65l.ZRhRUaZGQc9xOwtLW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-03-10 17:54:32", last_sign_in_at: "2015-03-10 17:54:32", current_sign_in_ip: "10.0.2.2", last_sign_in_ip: "10.0.2.2"}
])
Ingredient.create!([
  {recipe_id: 1, name: "Chicken", quantity: "1 whole"},
  {recipe_id: 1, name: "Carrots", quantity: "2 cups"},
  {recipe_id: 1, name: "Celery", quantity: "1 cup"},
  {recipe_id: 1, name: "Chicken Broth", quantity: "5 cups"},
  {recipe_id: 2, name: "Pork Shoulder", quantity: "3 lbs"},
  {recipe_id: 2, name: "Hominy", quantity: "2 cups"},
  {recipe_id: 2, name: "Guajillo Chiles", quantity: "8"},
  {recipe_id: 2, name: "Cumin", quantity: "1 tbl"},
  {recipe_id: 2, name: "Oregano", quantity: "1 tbl"},
  {recipe_id: 2, name: "Onion", quantity: "1"},
  {recipe_id: 2, name: "Garlic", quantity: "3 cloves"},
  {recipe_id: 3, name: "Apples", quantity: "10"},
  {recipe_id: 3, name: "Flour", quantity: "2 cups"},
  {recipe_id: 3, name: "Butter", quantity: "1 cup "},
  {recipe_id: 3, name: "Sugar", quantity: "3 tbl"},
  {recipe_id: 3, name: "Cinnamon", quantity: "2 tsp"},
  {recipe_id: 4, name: "Ham", quantity: "4 slices"},
  {recipe_id: 4, name: "Cheddar", quantity: "1 slice"},
  {recipe_id: 4, name: "Bread", quantity: "2 slices"},
  {recipe_id: 4, name: "Mayo", quantity: "1 tsp"}
])
Recipe.create!([
  {title: "Chicken Soup", instructions: "[\"Roast the chicken\",\"Chop the carrots and celery\",\"Bring chicken broth to a boil\",\"Shred chicken\",\"Add ingredients to the broth to simmer\"]"},
  {title: "Pozole", instructions: "[\"Sear pork shoulder in a dutch oven\",\"Add water, and simmer for 4 hours\",\"Using some of the boiling water, steep chiles for about 20 minutes\",\"Blend chiles with cumin, garlic, and oregano\",\"Remove pork and shred\",\"Stir chile mixture into the broth\",\"Add pork and simmer for another 20 minutes\",\"Serve in bowls and top with chopped raw onion\"]"},
  {title: "Apple Pie", instructions: "[\"Combine flour and butter, adding a bit of water to make dough\",\"Chill dough\",\"Roll out dough and place in a pie dish\",\"Peel and slice apples, toss with sugar and cinnamon, add to pie dish\",\"Bake at 350F for 25 min\"]"},
  {title: "Ham Sandwich", instructions: "[\"Spread mayo on bread\",\"Add Ham and Cheddar\",\"Close up the Sandwich\",\"EAT IT\"]"}
])
