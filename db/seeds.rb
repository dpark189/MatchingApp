# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# #
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'skill_list.csv'))
csv = CSV.parse(csv_text, :headers => false, :encoding => 'ISO-8859-1')
csv.each do |item|
  Matchitem.create(name: "#{item}")
  puts "#{item} saved"
end

#
# 10.times do
#   User.create(first_name: Faker::LordOfTheRings.character, last_name: Faker::Book.author, email: Faker::Internet.email, username: Faker::Internet.user_name, password: 'password')
# end
#
# 5.times do
#   Listing.create!(user_id: rand(1..10), job_title: Faker::Book.author, max_starting_salary: rand(1..10000000), description: Faker::Hacker.say_something_smart)
# end
#
# 2.times do
#   Qualification.create(user_id: rand(1..10))
# end
#
# 5.times do
#   Requirement.create(listing_id: rand(1..5))
# end
#
# # Matchitem seed
#
#   matchitem_seed_number = 0
#   while matchitem_seed_number < 10 do
#
#     name = Faker::Book.genre
#     qualification_number = rand(1..2)
#     requirement_number = rand(1..5)
#     qualification = Qualification.all
#     requirement = Requirement.all
#
#     if qualification.find("#{qualification_number}").matchitem.where(name: "#{name}").exists? || Matchitem.where(name: "#{name}").exists? || requirement.find("#{requirement_number}").matchitem.where(name: "#{name}").exists?
#
#       while qualification.find("#{qualification_number}").matchitem.where(name: "#{name}").exists? || Matchitem.where(name: "#{name}").exists? || requirement.find("#{requirement_number}").matchitem.where(name: "#{name}").exists? do
#         name = Faker::Book.genre
#         qualification_number = rand(1..2)
#         requirement_number = rand(1..5)
#       end
#
#       Matchitem.create!(name: "#{name}", qualification_id: "#{qualification_number}", requirement_id: "#{requirement_number}")
#     else
#       Matchitem.create!(name: "#{name}", qualification_id: "#{qualification_number}", requirement_id: "#{requirement_number}")
#     end
#     matchitem_seed_number += 1
#   end
#
# # benefits seeds
#
#     benefits_list = [
#       ["Flexible Working Hours",  "1description"],
#       ["Remote Work",             "2description"],
#       ["Paid Parental Leave",     "3description"],
#       ["Health Insurance",        "4description"],
#       ["Dental Insurance",        "5description"],
#       ["Life Insurance",          "6description"]
#     ]
#
#     benefits_list.each do |name, description|
#       Benefit.create( name: "#{name}", description: "#{description}", listings_id: rand(1..5))
#     end
#
# # college major seeds
#
#     college_majors_list = [
#       ["Math",              "College Major Description Math"],
#       ["Biology",           "College Major Description Biology"],
#       ["Chemistry",         "College Major Description Chemistry"],
#       ["Computer Science",  "College Major Description Computer Science"],
#       ["English",           "College Major Description English"],
#       ["Sociology",         "College Major Description Sociology"]
#     ]
#
#     college_majors_list.each do |name, description|
#       CollegeMajor.create( name: "#{name}", description: "#{description}", listings_id: rand(1..5))
#     end
#
# # education level seed
#
#     education_levels_list = [
#       ["BA/BS", "Bachelor's of art or science"],
#       ["Master's", "Master's degree"],
#       ["PhD", "Doctorate's degree"],
#       ["High School Diploma or Equivalent", "High school or equivalent"],
#       ["No High School Diploma", "Less than high school"]
#     ]
#
#     education_levels_list.each do |name, description|
#       EducationLevel.create( name: "#{name}", description: "#{description}", listings_id: rand(1..5))
#     end
#
# # type of employment seeds
#
#     type_of_employments_list = [
#       ["Full-Time"],
#       ["Part-Time"],
#       ["Contract"],
#       ["Internship"]
#     ]
#     type_of_employments_list.each do |name, description|
#       TypeOfEmployment.create( name: "#{name}", description: "#{description}", listings_id: rand(1..5))
#     end
