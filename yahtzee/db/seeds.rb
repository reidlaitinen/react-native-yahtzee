# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  user = User.create(
    email: Faker::Internet.unique.email,
    password: 'password'
  )
  20.times do
    Score.create(
      user_id: user.id, 
      value: Faker::Number.between(25, 360)
    )
  end
end