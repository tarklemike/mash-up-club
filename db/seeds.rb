# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require 'open-uri'

puts 'removing old data...'

User.destroy_all

puts 'creating users...'
user_1 = User.create(
  email: 'miketarkleman@gmail.com',
  password: 'G0d$p33dU!',
  username: 'henrychurches',
  first_name: 'Mike',
  last_name: 'Tarkleman',
  image: ''
)

user_2 = User.create(
  email: 'tarklemike@outlook.com',
  password: 'G0d$p33dU!',
  username: 'tarklemike',
  first_name: 'Mikke',
  last_name: 'Takkleman',
  image: ''
)

# user_2_image = URI.open("https://upload.wikimedia.org/wikipedia/en/a/a5/Donald_Duck_angry_transparent_background.png")
# user_2.photo.attach(io: user_2_image, filename: 'donald.jpg', content_type: "image/jpeg")
# user_2.save

puts 'creating ideas database...'

idea_1 = Idea.create(
  description: 'Rhinestone Cowboy x Like A Virgin',
  audio: '',
  user_id: user_1
)

idea_2 = Idea.create(
  description: 'Black Eyed Peas - shut up x Dolly Parton - 9 to 5',
  audio: '',
  user_id: user_1
)

idea_3 = Idea.create(
  description: "Donna Summers - I Feel Love x Bon Jovi - Livin' On A Prayer",
  audio: '',
  user_id: user_2
)

puts "creating creations database..."

creation_1 = Creation.create(

)

puts 'finished!'
