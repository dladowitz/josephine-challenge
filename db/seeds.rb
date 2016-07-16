# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create({
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 'password'
})

user2 = User.create({
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 'password'
})

user3 = User.create({
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 'password'
})

user4 = User.create({
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 'password'
})

meal1 = user1.meals.create({
  title: Faker::Lorem.sentence(3),
  price: 10
})

meal1.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal1.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal2 = user1.meals.create({
  title: Faker::Lorem.sentence(3),
  price: 12
})

meal2.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal2.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal3 = user1.meals.create({
  title: Faker::Lorem.sentence(3),
  price: 9
})

meal3.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal3.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal4 = user2.meals.create({
  title: Faker::Lorem.sentence(3),
  price: 10
})

meal4.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal4.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal5 = user2.meals.create({
  title: Faker::Lorem.sentence(3),
  price: 10
})

meal5.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal5.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal6 = user3.meals.create({
  title: Faker::Lorem.sentence(3),
  price: 10
})

meal6.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})

meal6.meal_items.create({
  title: Faker::Lorem.sentence(3),
  description: Faker::Lorem.paragraph
})
