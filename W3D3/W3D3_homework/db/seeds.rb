# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
john = Person.create({ name: 'John', house_id: house1.id})
dave = Person.create({ name: 'Dave', house_id: house2.id})

house1 = House.create({ address: '825 Battery'})
house2 = House.create({ address: '395 Oyster Point'})