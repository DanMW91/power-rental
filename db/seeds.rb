# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
=======

>>>>>>> 74144e15eba4785dcef255e37139fface467a904
Power.destroy_all
User.destroy_all


user1 = User.create(email: 'dan@gmail.com', password: '123123', first_name: 'Dan', last_name: 'Danson', location: 'france')


5.times do
  Power.create(user_id: user1.id, element: "fire", description: 'It burns!', power_type: 'sorcery', price: 150, location: 'france', example_hero: 'human torch', name: 'pyromancer' )
  puts "creating power"
end
