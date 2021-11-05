# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Empezando seed"

Developer.destroy_all

developer1 = Developer.create(name:"Josefina", position:"Front-end Developer", description:"Hi, I'm Josefina front-end developer. I have 7 years of experience and I love dogs.", level:5);
developer1 = Developer.create(name:"Jose", position:"back-end Developer", description:"Hi, I'm Jose back-end developer. I have 4 years of experience and I love dogs.", level:4);

puts "all done!!!"
