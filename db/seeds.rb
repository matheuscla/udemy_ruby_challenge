# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  first_name: "George",
  mi: "R",
  last_name: "Martin",
  password: "123456",
  password_confirmation: "123456",
  email: "martin@example.com",
  address1: "Westeros King's landing",
  address2: "Westeros King's landing",
  country: "Westeros",
  city: "Westeros",
  zip: "12345678",
  admin: true
)
