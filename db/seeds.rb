# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Booking.destroy_all
Power.destroy_all
User.destroy_all



user1 = User.create(email: 'dan@gmail.com', password: '123123', first_name: 'Dan', last_name: 'Danson', location: 'france')
image_url1 = 'https://static1.srcdn.com/wordpress/wp-content/uploads/2021/05/Wolverine-Blood-healing-factor-x-men-13.jpg'
file1 = URI.open(image_url1)
user1.photo.attach(io: file1, filename: "#{user1.first_name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

user2 = User.create(email: 'test@test.com', password: 'test123', first_name: 'Jeff', last_name: 'Jefferson', location: 'england')
image_url = 'https://static.wikia.nocookie.net/marveldatabase/images/8/88/Fantastic_Four_Vol_6_1_Human_Torch_Variant_Textless.jpg'
file = URI.open(image_url)
user2.photo.attach(io: file, filename: "#{user2.first_name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')


power = Power.create!(user_id: user1.id, element: "Fire", description: 'It burns!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'human torch', name: 'pyromancer')
puts "creating power"
image_url = 'https://static.wikia.nocookie.net/marveldatabase/images/8/88/Fantastic_Four_Vol_6_1_Human_Torch_Variant_Textless.jpg'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

power = Power.create!(user_id: user2.id, element: "Electricity", description: 'Control the weather, whenever!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'storm', name: 'Weather Control')
puts "creating power"
image_url = 'https://static.wikia.nocookie.net/powerlisting/images/9/99/Storm%27s_wet..jpg'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

power = Power.create!(user_id: user1.id, element: "Air", description: 'Never walk home again!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'Nightcrawler', name: 'Teleportation')
puts "creating power"
image_url = 'https://comicvine1.cbsistatic.com/uploads/original/5/52463/991755-uncanny_x_men__516_022.jpg'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

power = Power.create!(user_id: user2.id, element: "Earth", description: 'Pick up heavy things! Beat up your enemies and impress girls!', power_type: 'Sorcery', price: 150, location: 'france', example_hero: 'Superman', name: 'Super Strength')
puts "creating power"
image_url = 'https://static.tvtropes.org/pmwiki/pub/images/hulk_carlo_pagulayan.png'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

power = Power.create!(user_id: user1.id, element: "Water", description: 'Go invisible, sneak about!', power_type: 'Sorcery', price: 150, location: 'germany', example_hero: 'Invisible Woman', name: 'Invisibility')
puts "creating power"
image_url = 'https://i.pinimg.com/originals/1e/6a/3a/1e6a3ae186858c89bea11085b404b152.jpg'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

power = Power.create!(user_id: user2.id, element: "Air", description: 'Heal yourself from the brink of death. Stubbed toes will be a thing of the past!', power_type: 'Healing', price: 250, location: 'germany', example_hero: 'Wolverine', name: 'Healing Factor')
puts "creating power"
image_url = 'https://static3.srcdn.com/wordpress/wp-content/uploads/2020/09/Wolverine-Bullet-Wounds.jpg'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

power = Power.create!(user_id: user1.id, element: "Earth", description: 'Climb walls, leap from building to building!', power_type: 'Strength', price: 150, location: 'Africa', example_hero: 'Spiderman', name: 'Spider Abilities')
puts "creating power"
image_url = 'https://www.ocregister.com/wp-content/uploads/2020/03/Comic-16x9-1-1.jpg'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')

power = Power.create!(user_id: user2.id, element: "Electricity", description: 'Shoot lightning from your hands!', power_type: 'Sorcery', price: 50, location: 'germany', example_hero: 'Static', name: 'Electricity')
puts "creating power"
image_url = 'https://imgix-media.wbdndc.net/cms/filer_public/34/10/34100455-a86f-4107-9bdd-98b4addf5ecc/static-powers-staic_2_05_600-v1.jpg'
file = URI.open(image_url)
power.photo.attach(io: file, filename: "#{power.name.gsub(" ", "-")}.jpeg", content_type: 'image/jpeg')
