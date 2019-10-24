require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

5.times do |index|
  Dogsitter.create(
  	name: Faker::Name.first_name
  	)
end

20.times do |index|
  Dog.create(
  	name: Faker::Games::Pokemon.name
  	)
end

20.times do |index|
  Stroll.create(
  	date: Faker::Date.forward(days: 100),
  	dogsitter: Dogsitter.all.sample
  	)
end