# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tmo = Carrier.create(name:'T-Mobile')
verizon = Carrier.create(name:'Verizon')
att = Carrier.create(name:'AT&T')
sprint = Carrier.create(name:'Sprint')


tmo.carrier_plans.create(name: 'T-Mobile One', data_amount: Float::INFINITY, data_price: 0)
verizon.carrier_plans.create(name: 'Unlimited Go', data_amount: Float::INFINITY, data_price: 0)
att.carrier_plans.create(name: 'Unlimited Choice', data_amount: Float::INFINITY, data_price: 0)
sprint.carrier_plans.create(name: 'Sprint Unlimited', data_amount: Float::INFINITY, data_price: 0)