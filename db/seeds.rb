# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tag.destroy_all
Gossip.destroy_all
ToTag.destroy_all
City.destroy_all

10.times do
 city = City.create!(name: Faker::Address.city, zipcode: Faker::Number.number(digits: 5))
end

puts "10 cities créées"

10.times do
	user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: Faker::Internet.free_email, age: Faker::Number.number(digits: 2), city_id: rand(City.all.first.id..City.all.last.id))
end

puts "10 users créés"

21.times do
  gossip = Gossip.create!(title: Faker::Color.color_name, content: Faker::Quote.famous_last_words, user_id: rand(User.all.first.id..User.all.last.id))
end

puts "20 gossips créés"

10.times do
  tag = Tag.create!(title: Faker::Address.city)
end

