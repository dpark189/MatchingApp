# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#   User.create(first_name: Faker::LordOfTheRings.character, last_name: Faker::Book.author, email: Faker::Internet.email, username: Faker::Internet.user_name, password: 'password')
# end
#
# 2.times do
#   Qualification.create(user_id: rand(1..10))
# end

10.times do
  Matchitem.create!(match_item: Faker::Book.genre, qualification_id: rand(1..2))
end
