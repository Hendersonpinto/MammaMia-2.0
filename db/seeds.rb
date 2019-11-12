henderson = User.new(
  name: "Henderson"
  last_name: "Pinto"
  location: Faker::Address.full_address
  email: "hendorson@mammamia.com"
  password: "12345"
  )
henderson.save!

rasmus = User.new(
  name: "Rasmus"
  last_name: "Melberg"
  location: Faker::Address.full_address
  email: "rasmus@mammamia.com"
  password: "12345"
  )
rasmus.save!

marcus = User.new(
  name: "Marcus"
  last_name: "Aandahl"
  location: Faker::Address.full_address
  email: "marcus@mammamia.com"
  password: "12345"
  )
marcus.save!




10.times do
 user = User.new(
   name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   location: Faker::Address.full_address,
   email: Faker::Internet.email
 )
 user.save!
end



20.times do
 mom = Mom.new(
   name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   location: Faker::Address.full_address,
   price: Faker::Number.within(range: 50..100),
   owner: [henderson, rasmus, marcus].sample
 )
 mom.save!
end
