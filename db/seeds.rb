# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Power.destroy_all
User.destroy_all



user1 = User.create(email: 'dan@gmail.com', password: '123123', first_name: 'Dan', last_name: 'Danson', location: 'france')
user2 = User.create(email: 'test@test.com', password: 'test123', first_name: 'Jeff', last_name: 'Jefferson', location: 'england')


  Power.create!(user_id: user1.id, element: "Fire", description: 'It burns!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'human torch', name: 'pyromancer', image_url: 'https://static.wikia.nocookie.net/marveldatabase/images/8/88/Fantastic_Four_Vol_6_1_Human_Torch_Variant_Textless.jpg'  )
  puts "creating power"
    Power.create!(user_id: user2.id, element: "Electricity", description: 'Control the weather, whenever!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'storm', name: 'Weather Control', image_url: 'https://static.wikia.nocookie.net/powerlisting/images/9/99/Storm%27s_wet..jpg' )
  puts "creating power"
    Power.create!(user_id: user1.id, element: "Air", description: 'Never walk home again!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'Nightcrawler', name: 'Teleportation', image_url: 'https://comicvine1.cbsistatic.com/uploads/original/5/52463/991755-uncanny_x_men__516_022.jpg'  )
  puts "creating power"
    Power.create!(user_id: user2.id, element: "Earth", description: 'Pick up heavy things! Beat up your enemies and impress girls!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'Superman', name: 'Super Strength', image_url: 'https://static.tvtropes.org/pmwiki/pub/images/hulk_carlo_pagulayan.png'  )
  puts "creating power"
    Power.create!(user_id: user1.id, element: "Water", description: 'Go invisible, sneak about!', power_type: 'Sorcery', price: 150, location: 'germany', example_hero: 'Invisible Woman', name: 'Invisibility', image_url: 'https://i.pinimg.com/originals/1e/6a/3a/1e6a3ae186858c89bea11085b404b152.jpg'  )
  puts "creating power"
