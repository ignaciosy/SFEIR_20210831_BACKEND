# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.find_or_create_by(name: "Exercise")
Category.find_or_create_by(name: "Education")
Category.find_or_create_by(name: "Recipe")

if Category.count > 0
    puts "Basic categories successfully created!"
else
    puts 'Something went wrong populating the database :('
end