# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
10.times do
  User.create(first_name: Faker::LordOfTheRings.character, last_name: Faker::Book.author, email: Faker::Internet.email, username: Faker::Internet.user_name, password: 'password')
end

2.times do
  Qualification.create(user_id: rand(1..10))
end

2.times do
  Requirement.create()
end

10.times do
  Matchitem.create!(name: Faker::Book.genre, qualification_id: rand(1..2), requirement_id: rand(1..2))
end

# benefits seeds
    benefits_list = [
      ["Flexible Working Hours",  "1description"],
      ["Remote Work",             "2description"],
      ["Paid Parental Leave",     "3description"],
      ["Health Insurance",        "4description"],
      ["Dental Insurance",        "5description"],
      ["Life Insurance",          "6description"]
    ]

    benefits_list.each do |name, description|
      Benefit.create ( name: name, description: description)
    end

# college major seeds
    college_majors_list = [
      ["Math",              "College Major Description Math"]
      ["Biology",           "College Major Description Biology"]
      ["Chemistry",         "College Major Description Chemistry"]
      ["Computer Science",  "College Major Description Computer Science"]
      ["English",           "College Major Description English"]
      ["Sociology",         "College Major Description Sociology"]
    ]

    college_majors_list.each do |name, description|
      CollegeMajor.create ( name: name, description: description)
    end
