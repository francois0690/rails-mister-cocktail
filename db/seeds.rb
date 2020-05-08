# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i1 = Ingredient.create(name: "Mint")
i2 = Ingredient.create(name: "Vodka")
i3 = Ingredient.create(name: "Rhum")
i4 = Ingredient.create(name: "Tequila")
i5 = Ingredient.create(name: "Orange juice")
i6 = Ingredient.create(name: "Tomato juice")

c1 = Cocktail.create(name: "Mojito")
c2 = Cocktail.create(name: "Bloody Mary")
c3 = Cocktail.create(name: "Sex on the beach")
c4 = Cocktail.create(name: "Margarita")
c5 = Cocktail.create(name: "Pina Colada")

# Mojito
d1 = Dose.new(description: "6 feuilles")
d1.cocktail = c1
d1.ingredient = i1
d1.save

d2 = Dose.new(description: "1,5 oz")
d2.cocktail = c1
d2.ingredient = i3
d2.save

#Bloddy Mary
d3 = Dose.new(description: "4,5 oz")
d3.cocktail = c2
d3.ingredient = i2
d3.save

d4 = Dose.new(description: "9 cl")
d4.cocktail = c2
d4.ingredient = i6
d4.save

#Sex on the beach
d5 = Dose.new(description: "1.33 oz")
d5.cocktail = c3
d5.ingredient = i2
d5.save

d6 = Dose.new(description: "1.33 oz")
d6.cocktail = c3
d6.ingredient = i5
d6.save

# Margarita
d7 = Dose.new(description: "2 cl")
d7.cocktail = c4
d7.ingredient = i4
d7.save

