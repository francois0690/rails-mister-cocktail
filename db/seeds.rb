# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ing = ['jus de pomme', "cidre", "chocolat", "lait", "jus d'abricot", "bourbon", "yaourt", "thé", "crème fraiche", "crème de cacao", "café", "liqueur de café", "vanille", "ouef", "paté croute", "farine", "dès de jambon", "tranche de citron", "bière","vin rouge", "villageoise", "gros rouge qui tache", "fougne", 'rosé', "huile de vidange", 'saucisson', 'fromage de chèvre', 'olive', 'vodka', 'jus de citron', 'rhum blanc', 'tequila', "jus d'orange", 'jus de tomate', 'cognac', 'gin', 'whisky', 'eau pétillante', 'champagne', 'sirop de fraise', 'sirop de grenadine', 'coca cola', 'feuilles de menthe', 'glacons', 'triple sec', 'cacolac', 'jus de banane', "jus d'ananas", 'pastis', 'jus de chaussette', 'sirop de menthe', 'sirop de cassis', 'jus de citron vert', 'glace pilée', 'sucre en poudre', 'zeste de citron', "zeste d'orange", 'eau plate', 'vin blanc', 'vin mousseux', "sirop d'orange sanguine", 'limonade', 'cornichon', 'cointreau', "sirop de sucre de canne", "martini rouge", "martini blanc", "campari", "chambord", "jus de cranberry", "curacao bleu", "rhum ambré", "lait de coco", "ricard", "sucre roux", "sirop d'orgat"]

ing.each do |i|
  unless Ingredient.exists?(name: i)
    p "on ajoute #{i}"
    Ingredient.create(name: i)
  else
    p "l'ingrédient #{i} existe déjà"
  end
end


# i1 = Ingredient.create(name: "Citron")
# i2 = Ingredient.create(name: "Vodka")
# i3 = Ingredient.create(name: "Rhum")
# i4 = Ingredient.create(name: "Tequila")
# i5 = Ingredient.create(name: "Jus d'Orange")
# i6 = Ingredient.create(name: "Jus de Tomate")

# c1 = Cocktail.create(name: "Mojito")
# c2 = Cocktail.create(name: "Bloody Mary")
# c3 = Cocktail.create(name: "Sex on the beach")
# c4 = Cocktail.create(name: "Margarita")
# c5 = Cocktail.create(name: "Pina Colada")

# # Mojito
# d1 = Dose.new(description: "6 feuilles")
# d1.cocktail = c1
# d1.ingredient = i1
# d1.save

# d2 = Dose.new(description: "1,5 oz")
# d2.cocktail = c1
# d2.ingredient = i3
# d2.save

# #Bloddy Mary
# d3 = Dose.new(description: "4,5 oz")
# d3.cocktail = c2
# d3.ingredient = i2
# d3.save

# d4 = Dose.new(description: "9 cl")
# d4.cocktail = c2
# d4.ingredient = i6
# d4.save

# #Sex on the beach
# d5 = Dose.new(description: "1.33 oz")
# d5.cocktail = c3
# d5.ingredient = i2
# d5.save

# d6 = Dose.new(description: "1.33 oz")
# d6.cocktail = c3
# d6.ingredient = i5
# d6.save

# # Margarita
# d7 = Dose.new(description: "2 cl")
# d7.cocktail = c4
# d7.ingredient = i4
# d7.save

