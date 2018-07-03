tmo = Carrier.create(name:'T-Mobile')
verizon = Carrier.create(name:'Verizon')
att = Carrier.create(name:'AT&T')
sprint = Carrier.create(name:'Sprint')


tmo.carrier_plans.create(name: 'T-Mobile One', data_amount: Float::INFINITY, data_price: 0)
verizon.carrier_plans.create(name: 'Unlimited Go', data_amount: Float::INFINITY, data_price: 0)
att.carrier_plans.create(name: 'Unlimited Choice', data_amount: Float::INFINITY, data_price: 0)
sprint.carrier_plans.create(name: 'Sprint Unlimited', data_amount: Float::INFINITY, data_price: 0)