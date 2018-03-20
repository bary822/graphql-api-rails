# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

include GenderEnumerable, ColorEnumerable, ToyCategoryEnumerable

bary = Owner.create name: 'Bary', birthdate: Date.parse('1991-08-22'), gender: GENDER[:male]

goemon = Dog.create owner_id: bary.id, name: 'Goemon', birthdate: Date.parse('2018-08-19'), gender: GENDER[:male], color: COLOR[:red], weight: 15.5, description: 'Smart, yet wonder boy.'
jigen = Dog.create owner_id: bary.id, name: 'Jigen', birthdate: Date.parse('2020-12-07'), gender: GENDER[:female], color: COLOR[:black], weight: 6.3, description: 'Cheerful, and bouncing girl.'

Toy.create dog_id: goemon.id, name: 'Mesh Ball', category: TOYCATEGORY[:fetch]
Toy.create dog_id: goemon.id, name: 'Natural Cotton Rope', category: TOYCATEGORY[:pull]
Toy.create dog_id: jigen.id, name: 'Kong', category: TOYCATEGORY[:think]
