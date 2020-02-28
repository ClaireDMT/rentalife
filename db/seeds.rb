require "open-uri"
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
life4 = Life.create(title: "Haunt them all", job: "hauting people", city: "Maine", marital_status: "widowed", price_per_day: 500, kids: 0, social_status: "friendly", accommodation: accommodation4, user: user4 )
life5 = Life.create(title: "Wingardium Leviosa", job: "house-elf", city: "Hogwarts", price_per_day: 10, marital_status: "in love with Harry Potter", kids: 0, social_status: "the lowest", accommodation: accommodation5, user: user5 )


file1 = URI.open('https://static.ffx.io/images/$zoom_1%2C$multiply_0.4073%2C$ratio_1.777778%2C$width_1964%2C$x_0%2C$y_132/t_crop_custom/q_86%2Cf_auto/f44ffbaac2cd2e2638282c96ed16e3b2936fd36e.jpg')
life1.photos.attach(io: file1, filename: 'silvio.png', content_type: 'image/jpg')

file2 = URI.open('https://assets3.thrillist.com/v1/image/1709456/size/tmg-article_default_mobile.jpg')
life2.photos.attach(io: file2, filename: 'berlin.png', content_type: 'image/jpg')

file3 = URI.open('https://www.wallpaperup.com/uploads/wallpapers/2014/11/13/515062/0dd541f33f32a6e8c9d84bae630a193d-700.jpg')
life3.photos.attach(io: file3, filename: 'space.png', content_type: 'image/jpg')

file4 = URI.open('https://images.unsplash.com/photo-1481018085669-2bc6e4f00eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80.jpg')
life4.photos.attach(io: file4, filename: 'manor.png', content_type: 'image/jpg')

file5 = URI.open('https://www.tripsavvy.com/thmb/kD_Mk9iOoU2priCF0fzbzs9S7l8=/2816x2112/filters:no_upscale():max_bytes(150000):strip_icc()/Hogwarts-Castle-Islands-of-Adventure-56a952853df78cf772a5d4e3.jpg')
life5.photos.attach(io: file5, filename: 'Hogwarts.png', content_type: 'image/jpg')
puts 'Creating bookings...'

booking1 = Booking.create(life: life1, user: user5)
booking2 = Booking.create(life: life3, user: user4)
booking3 = Booking.create(life: life2, user: user1)
booking4 = Booking.create(life: life4, user: user2)
booking5 = Booking.create(life: life5, user: user3)

puts "Done!"

