# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Booking.destroy_all
Life.destroy_all
Accommodation.destroy_all
User.destroy_all


puts 'Creating users...'

user1 = User.create(name: "Silvio", email: "fake@gmail.com", encrypted_password: "azerty")
user2 = User.create(name: "Claire")
user3 = User.create(name: "Thomas")
user4 = User.create(name: "Casper")
user5 = User.create(name: "Dobby")

puts 'Creating Accommodations...'

accommodation1 = Accommodation.create(accommodation_type: "villa")
accommodation2 = Accommodation.create(accommodation_type: "flat")
accommodation3 = Accommodation.create(accommodation_type: "spaceship")
accommodation4 = Accommodation.create(accommodation_type: "manor")
accommodation5 = Accommodation.create(accommodation_type: "wardrobe")


puts 'Creating lives...'

life1 = Life.create(title: 'La Dolce Vita', job: "crook", city: "Roma", marital_status: "Many women", kids: 102, price_per_day: 1000000, social_status: "untouchable", accommodation: accommodation1, user: user1)
life2 = Life.create(title: "Ich Bin Ein Berliner", job: "freelance developper", city: "Berlin", price_per_day: 300, marital_status: "single", kids: 0, social_status: "akward", accommodation: accommodation2, user: user2)
life3 = Life.create(title: "Gran Control to Major Tom", job: "astronaut", city: "earth", price_per_day: 1000, marital_status: "married", kids: 2, social_status: "role model", accommodation: accommodation3, user: user3)
life4 = Life.create(title: "Ghost", job: "hauting people", city: "Maine", marital_status: "widowed", price_per_day: 500, kids: 0, social_status: "friendly", accommodation: accommodation4, user: user4 )
life5 = Life.create(title: "Be Harry Potter best friend", job: "house-elf", city: "Hogwarts", price_per_day: 10, marital_status: "in love with Harry Potter", kids: 0, social_status: "the lowest", accommodation: accommodation5, user: user5 )

puts 'Creating bookings...'

booking1 = Booking.create(life: life1, user: user5)
booking2 = Booking.create(life: life3, user: user4)
booking3 = Booking.create(life: life2, user: user1)
booking4 = Booking.create(life: life4, user: user2)
booking5 = Booking.create(life: life5, user: user3)

puts "Done!"

