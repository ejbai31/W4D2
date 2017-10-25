# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

colors = ['blue', 'green', 'red', 'purple', 'black', 'white', 'albino']

cat1 = Cat.create(
  birth_date: Faker::Date.between(100.years.ago, Date.today),
  color: colors.sample,
  name: Faker::Name.name,
  sex: ["M", "F"].sample,
  description: Faker::MostInterestingManInTheWorld.quote
)
cat2 = Cat.create(
  birth_date: Faker::Date.between(100.years.ago, Date.today),
  color: colors.sample,
  name: Faker::Name.name,
  sex: ["M", "F"].sample,
  description: Faker::MostInterestingManInTheWorld.quote
)
cat3 = Cat.create(
  birth_date: Faker::Date.between(100.years.ago, Date.today),
  color: colors.sample,
  name: Faker::Name.name,
  sex: ["M", "F"].sample,
  description: Faker::MostInterestingManInTheWorld.quote
)
cat4 = Cat.create(
  birth_date: Faker::Date.between(100.years.ago, Date.today),
  color: colors.sample,
  name: Faker::Name.name,
  sex: ["M", "F"].sample,
  description: Faker::MostInterestingManInTheWorld.quote
)
cat5 = Cat.create(
  birth_date: Faker::Date.between(100.years.ago, Date.today),
  color: colors.sample,
  name: Faker::Name.name,
  sex: ["M", "F"].sample,
  description: Faker::MostInterestingManInTheWorld.quote
)
cat6 = Cat.create(
  birth_date: Faker::Date.between(100.years.ago, Date.today),
  color: colors.sample,
  name: Faker::Name.name,
  sex: ["M", "F"].sample,
  description: Faker::MostInterestingManInTheWorld.quote
)
