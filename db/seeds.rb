# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Clearing database'

Booking.destroy_all
Mom.destroy_all
User.destroy_all

puts 'Creating users'

henderson = User.new(
 name: "Henderson",
 last_name: "Pinto",
 location: Faker::Address.full_address,
 email: "henderson@mammamia.com",
 password: "1234567"
 )
henderson.save!
rasmus = User.new(
 name: "Rasmus",
 last_name: "Melberg",
 location: Faker::Address.full_address,
 email: "rasmus@mammamia.com",
 password: "1234567"
 )
rasmus.save!
marcus = User.new(
 name: "Marcus",
 last_name: "Aandahl",
 location: Faker::Address.full_address,
 email: "marcus@mammamia.com",
 password: "1234567"
 )
marcus.save!
juliana = User.new(
 name: "Juliana",
 last_name: "Geller",
 location: Faker::Address.full_address,
 email: "juliana@mammamia.com",
 password: "1234567"
 )
marcus.save!
first_user = User.new(
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  email: Faker::Internet.email,
  password: "1234567"
)
first_user.save!
second_user = User.new(
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  email: Faker::Internet.email,
  password: "1234567"
)
second_user.save!
third_user = User.new(
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  email: Faker::Internet.email,
  password: "1234567"
)
third_user.save!

puts 'Creating moms'

mom1 = Mom.new(
  name: 'Maria',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  bio: "I'm the perfect mom - I won't really see anything wrong you do",
  price: Faker::Number.within(range: 50..100),
  owner: henderson
)
mom1.remote_photo_url = "https://rbbcommunications.com/wp-content/uploads/2018/12/Abuela.jpg"
mom1.save!
mom2 = Mom.new(
  name: 'Anne',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  bio: "Let's listen to Ramones and down some beers",
  price: Faker::Number.within(range: 50..100),
  owner: marcus,
  supermom: true,
)
mom2.remote_photo_url = "http://www.chilloutpoint.com/images/2010/08/the-oldest-dj-in-the-world/the-oldest-dj-in-the-world-02.jpg"
mom2.save!
mom3 = Mom.new(
  name: 'Ingrid',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  bio: "Who's that c*nt that said you're ugly? I'll find him and kill him.",
  price: Faker::Number.within(range: 50..100),
  owner: rasmus
)
mom3.remote_photo_url = "https://piximus.net/media/26022/gangster-grandmas-42.jpg"
mom3.save!
mom4 = Mom.new(
  name: 'Marla',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  bio: "Let's go for a walk around Christiania.",
  price: Faker::Number.within(range: 50..100),
  owner: juliana
)
mom4.remote_photo_url = "http://25.media.tumblr.com/tumblr_m2dtn832eA1qcxcu3o1_500.jpg"
mom4.save!
mom5 = Mom.new(
  name: 'Caroline',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  bio: "I can help you with your Le Wagon challenges",
  price: Faker::Number.within(range: 50..100),
  owner: second_user
)
mom5.remote_photo_url = "https://cdn.aarp.net/content/dam/aarp/work/working_retirement/2018/02/1140-82-year-old-programmer-masako-wakamiya.imgcache.revb1513d0bd11318c0698969e7455b397a.jpg"
mom5.save!
mom6 = Mom.new(
  name: 'Martha',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  bio: "I'll make you a lot of cakes until you look healthier, you haven't been eating. I know.",
  price: Faker::Number.within(range: 50..100),
  owner: third_user
)
mom6.remote_photo_url = "https://grist.files.wordpress.com/2008/07/grandma-cooking_h528.jpg"
mom6.save!

puts 'Creating bookings'

booking_marcus = Booking.new(
 user: marcus,
 mom: mom6,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today + 5.days
 )

booking_henderson = Booking.new(
 user: henderson,
 mom: mom2,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today + 4.days
 )

booking_rasmus = Booking.new(
 user: rasmus,
 mom: mom5,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today + 3.days
 )

booking_juliana = Booking.new(
 user: juliana,
 mom: mom4,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today + 2.days
 )

booking_marcus = Booking.new(
 user: marcus,
 mom: mom1,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today - 1.days
 )

booking_henderson = Booking.new(
 user: henderson,
 mom: mom3,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today - 2.days
 )

booking_rasmus = Booking.new(
 user: rasmus,
 mom: mom2,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today - 3.days
 )

booking_juliana = Booking.new(
 user: juliana,
 mom: mom5,
 price: Faker::Number.within(range: 100..500),
 start_date: Date.today - 4.days
 )

puts 'finishing up'


# 20.times do
#  mom = Mom.new(
#    name: Faker::Name.first_name,
#    last_name: Faker::Name.last_name,
#    location: Faker::Address.full_address,
#    price: Faker::Number.within(range: 50..100),
#    owner: [henderson, rasmus, marcus].sample
#  )
#  mom.save!
# end
# 10.times do
#  user = User.new(
#    name: Faker::Name.first_name,
#    last_name: Faker::Name.last_name,
#    location: Faker::Address.full_address,
#    email: Faker::Internet.email
#  )
#  user.save!
# end
