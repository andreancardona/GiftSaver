# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
10.times do
  Person.create(name: Faker::Name.name, img: Faker::Placeholdit.image("200x200"), birth_day: Faker::Date.birthday(18, 65))
end

Gift.destroy_all
20.times do
  Gift.create(name: Faker::Hipster.word, gift_img: Faker::Placeholdit.image("200x200"), description: Faker::Lorem.sentence(3), person_id: Person.all.sample.id)
end
