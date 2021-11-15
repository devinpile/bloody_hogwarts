# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Course.destroy_all

@student1 = Student.create!(name: "Alby", age: 13, house: "Grymblehuff")
@student2 = Student.create!(name: "Bael", age: 14, house: "Puffledorff")
@student3 = Student.create!(name: "Cora", age: 12, house: "Devorialian")

@course1 = Course.create!(name: "Healing Potions")
@course2 = Course.create!(name: "Defense Spells")
@course3 = Course.create!(name: "Attack Spells")