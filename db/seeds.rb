# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'open-uri'

puts "removing old data..."

User.destroy_all

puts "creating users..."
user_1 = User.create(
  email: 'miketarkleman@gmail.com',
  password: "123456",
  username: "tarklemike",
  first_name: "Mike",
  last_name: "Tarkleman",
  postcode: "SW8 2QP",
  image: ""
)
user_2 = User.create(
  email: 'grace.mac@icloud.com',
  password: "123456",
  username: "Top_Chef",
  first_name: "Grace",
  last_name: "Mac",
  postcode: "E17",
  image: "grace_profile.jpeg"
)
# user_2_image = URI.open("https://upload.wikimedia.org/wikipedia/en/a/a5/Donald_Duck_angry_transparent_background.png")
# user_2.photo.attach(io: user_2_image, filename: 'donald.jpg', content_type: "image/jpeg")
# user_2.save

user_3 = User.create(
  email: 'cy@pm.me',
  password: "123456",
  username: "Lad",
  first_name: "Cyrus",
  last_name: "DaVirus",
  postcode: "NW1",
  image: ""
)

user_4 = User.create(
  email: 'toren@pm.me',
  password: "123456",
  username: "Bahamas_bro",
  first_name: "Toren",
  last_name: "Tino",
  postcode: "E1",
  image: ""
)


puts "creating ingredients database..."

bacon = Ingredient.create!(name: "bacon")
bamboo_shoots = Ingredient.create!(name: "bamboo shoots")
basil = Ingredient.create!(name: "basil")
bean_sprouts = Ingredient.create!(name: "bean sprouts")
black_pepper = Ingredient.create!(name: "black pepper")
carrot = Ingredient.create!(name: "carrot")
cheese_parmesan = Ingredient.create!(name: "parmesan")
chicken = Ingredient.create!(name: "chicken")
chilli_flakes = Ingredient.create!(name: "chilli flakes")
chilli_green = Ingredient.create!(name: "green chilli")
coconut_milk =  Ingredient.create!(name: "coconut_milk")
coriander =  Ingredient.create!(name: "coriander")
coriander_ground = Ingredient.create!(name: "ground coriander")
cream = Ingredient.create!(name: "cream")
cumin_seeds = Ingredient.create!(name: "cumin seeds")
egg = Ingredient.create!(name: "egg")
garlic = Ingredient.create!(name: "garlic")
ginger = Ingredient.create!(name: "ginger")
green_curry_paste = Ingredient.create!(name: "green curry paste")
lemon_juice = Ingredient.create!(name: "lemon juice")
lemon_wedge = Ingredient.create!(name: "lemon wedges")
lime_juice = Ingredient.create!(name: "lime juice")
lime_wedge = Ingredient.create!(name: "lime wedges")
lentils = Ingredient.create!(name: "lentils")
mirin = Ingredient.create!(name: "mirin")
mozzarella = Ingredient.create!(name: "mozzarella")
mussels = Ingredient.create!(name: "mussels")
mustard_seeds = Ingredient.create!(name: "mustard seeds")
noodles_rice = Ingredient.create!(name: "rice noodles")
oil_vegetable = Ingredient.create!(name: "vegetable oil")
oil_olive = Ingredient.create!(name: "olive oil")
onion = Ingredient.create!(name: "onion")
onion_red = Ingredient.create!(name: "red onion")
pad_thai_sauce = Ingredient.create!(name: "pad Thai sauce")
parsley = Ingredient.create!(name: "parsley")
pasta = Ingredient.create!(name: "pasta")
peanuts = Ingredient.create!(name: "peanuts")
potato = Ingredient.create!(name: "potato")
prawns = Ingredient.create!(name: "prawns")
red_pepper = Ingredient.create!(name: "red pepper")
rice_basmati = Ingredient.create!(name: "basmati rice")
rice_short_grain = Ingredient.create!(name: "short-grain rice")
saffron = Ingredient.create!(name: "saffron")
sake = Ingredient.create!(name: "sake")
salt = Ingredient.create!(name: "salt")
sesame_seeds = Ingredient.create!(name: "sesame seeds")
soy_sauce = Ingredient.create!(name: "soy sauce")
spaghetti = Ingredient.create!(name: "spaghetti")
spring_onion = Ingredient.create!(name: "spring onion")
squid = Ingredient.create!(name: "squid")
stock_vegetable = Ingredient.create!(name: "vegetable stock")
sugar = Ingredient.create!(name: "sugar")
tofu = Ingredient.create!(name: "tofu")
tomato = Ingredient.create!(name: "tomato")
tomato_sauce = Ingredient.create!(name: "tomato sauce")
tumeric = Ingredient.create!(name: "tumeric")
vinegar_balsamic = Ingredient.create!(name: "balsamic vinegar")
yoghurt = Ingredient.create!(name: "yoghurt")
lamb = Ingredient.create!(name: "lamb")
sharlot = Ingredient.create!(name: "sharlot")
raisins = Ingredient.create!(name: "raisins")
pepper = Ingredient.create!(name: "pepper")
eggs = Ingredient.create!(name: "eggs")
thyme = Ingredient.create!(name: "thyme")
carrots = Ingredient.create!(name: "carrots")


puts "creating recipes..."

recipe_1 = Recipe.create!(
  title: "Dahl",
  description: "A delicious bowl of comfort",
  cuisine: "Indian",
  vegetarian: true,
  vegan: true,
  gluten_free: true,
  dairy_free: true,
  egg_free: true,
  nut_free: true,
  prep_time: 20,
  cook_time: 120,
  level: "Medium",
  servings: 4,
  method: "STEP 1\n
  Wash the dahl until the water runs clear, then drain and put in a large pan and cover with the cold water.\n

  STEP 2\n
  Bring to the boil and skim off any scum that rises to the surface.\n

  STEP 3\n
  Add the ginger, turmeric and chopped chillies to the pan with a pinch of salt.\n

  STEP 4\n
  Turn down the heat, cover, leaving the lid slightly ajar.\n

  STEP 5\n
  Turn down the
