# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


"User.create(first_name: Faker::Name.first_name  ,last_name:Faker::Name.last_name, email: Faker::Internet.email, age: Faker::Number.decimal_part(digits: 2), description: Faker::Quote.famous_last_words )

City.create(name: Faker::Address.city, zip_code:Faker::Address.zip_code)

Gossip.create(title:Faker::Music.instrument , content: Faker::Quote.famous_last_words)

Tag.create(title:Faker::Music.instrument )

PrivateMessage.create!(content:Faker::Quote.famous_last_words  )"

10.times do |index|
index = City.create(name: Faker::Address.city)
  User.create(first_name: Faker::Name.first_name  ,last_name:Faker::Name.last_name, email: Faker::Internet.email, age: Faker::Number.decimal_part(digits: 2), description: Faker::Quote.famous_last_words, city:index  )
end

10.times do |index|
  City.create(name: Faker::Address.city, zip_code:Faker::Address.zip_code)
end

20.times do |index|
  Gossip.create(title:Faker::Music.instrument , content: Faker::Quote.famous_last_words)
end



20.times do |index|
  tag = Tag.create(title:Faker::Music.instrument)
  ToTag.create(tag: tag, gossip: Gossip.all.sample )
end


5.times do |index|
  PrivateMessage.create(content:Faker::Quote.famous_last_words  )
end


