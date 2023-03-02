# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# briag = User.create!(firstname: "Briag", lastname: "Martin", email: "briag.martin@gmail.com", password: "password", password_confirmation: "password", admin: true)
# test_user = User.create!(firstname: "Briag", lastname: "Martin", email: "test@gmail.com", password: "123456", password_confirmation: "123456", admin: false)
#Personnality.create!(category: "Développeur", description: "Je suis un développeur", skills: "Ruby, Rails, HTML, CSS, JS", date_disponibility: "2021-01-01", user: briag)
Booking.destroy_all
Joinskill.destroy_all
Skill.destroy_all
Personnality.destroy_all
User.destroy_all


briag = User.create!(firstname: "Briag", lastname: "Martin", email: "briag.martin@gmail.com", password: "password", password_confirmation: "password", phone: 123456789, address: "Paris", owner: true)
baptiste = User.create!(firstname: "Baptiste", lastname: "Lemmonier", email: "baptil@gmail.com", password: "password", password_confirmation: "password", phone: 123456789, address: "Paris", owner: true)
charles = User.create!(firstname: "Charles", lastname: "Woehl", email: "charleswoehl@gmail.com", password: "password", password_confirmation: "password", phone: 123456789, address: "Paris", owner: true)

sarko = Personnality.create!(description: "Je suis un développeur", price: 100, rating: 5, name: "Sarko", user: briag, photo: "http://res.cloudinary.com/dkzycxs88/image/upload/c_fill/v1/development/mgshc8op4cvc8oesowtmo4uc3h8i")
balkany = Personnality.create!(description: "Je suis un agitateur", price: 200, rating: 4, name: "Balkany", user: baptiste, photo: "http://res.cloudinary.com/dkzycxs88/image/upload/c_fill/v1/development/8jise3w8sdoe73sljc02io9u4v43")
fillon = Personnality.create!(description: "Je suis un provovateur", price: 300, rating: 3, name: "Fillon", user: charles, photo: "http://res.cloudinary.com/dkzycxs88/image/upload/c_fill/v1/development/4iss3aklq6op9sqwtpyfxujk97")

meurtre = Skill.create!(name: "meurtre", icone: "fa-solid fa-person-falling-burst")
pedophilie = Skill.create!(name: "pédophilie", icone: "fa-solid fa-children")
fraude = Skill.create!(name: "fraude fiscale", icone: "fa-solid fa-dollar-sign")
ivresse = Skill.create!(name: "ivresse", icone: "fa-solid fa-wine-bottle")
drogue = Skill.create!(name: "drogue", icone: "fa-solid fa-cannabis")
violence = Skill.create!(name: "violence conjugale", icone: "fa-solid fa-person-dress-burst")
insulte = Skill.create!(name: "insulte", icone: "fa-solid fa-person-harassing")

Joinskill.create!(personnality: sarko, skill: meurtre)
Joinskill.create!(personnality: sarko, skill: pedophilie)
Joinskill.create!(personnality: sarko, skill: violence)
Joinskill.create!(personnality: sarko, skill: ivresse)

Joinskill.create!(personnality: balkany, skill: fraude)
Joinskill.create!(personnality: balkany, skill: drogue)

Joinskill.create!(personnality: fillon, skill: insulte)

Booking.create!(start_date: "2021-01-01", end_date: "2021-01-02", user: briag, personnality: balkany)
Booking.create!(start_date: "2021-01-11", end_date: "2021-01-14", user: baptiste, personnality: sarko)
Booking.create!(start_date: "2021-02-01", end_date: "2021-02-12", user: charles, personnality: fillon)
