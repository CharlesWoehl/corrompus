# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

briag = User.create!(firstname: "Briag", lastname: "Martin", email: "briag.martin@gmail.com", password: "password", password_confirmation: "password", admin: true)
test_user = User.create!(firstname: "Briag", lastname: "Martin", email: "test@gmail.com", password: "123456", password_confirmation: "123456", admin: false)

Personnality.create!(category: "Développeur", description: "Je suis un développeur", skills: "Ruby, Rails, HTML, CSS, JS", date_disponibility: "2021-01-01", user: briag)
