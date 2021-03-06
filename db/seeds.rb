#T-Mobile Plans

tmo = Carrier.create(name:'T-Mobile')

  tmo_essentials = tmo.carrier_plans.create(
    plan_type: 'Essentials',
    name: 'Essentials', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 0,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 30,
    senior_pricing: false,
    military_pricing: false,
    mix_and_match: true,
    match_id: 1)
      tmo_essentials.carrier_lines.create(price: 65)
      tmo_essentials.carrier_lines.create(price: 35)
      tmo_essentials.carrier_lines.create(price: 20)
      tmo_essentials.carrier_lines.create(price: 20)
      tmo_essentials.carrier_lines.create(price: 20)
      tmo_essentials.carrier_lines.create(price: 20)

  tmo_essentials_hotpost = tmo.carrier_plans.create(
    plan_type: 'Essentials',
    name: 'Essentials Hotspot', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: false,
    hotspot_lte: 10,
    hotspot_3g: Float::INFINITY,
    soft_cap: 0,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 30,
    senior_pricing: false,
    military_pricing: false,
    mix_and_match: true,
    match_id: 1)
      tmo_essentials_hotpost.carrier_lines.create(price: 65+10)
      tmo_essentials_hotpost.carrier_lines.create(price: 35+10)
      tmo_essentials_hotpost.carrier_lines.create(price: 20+10)
      tmo_essentials_hotpost.carrier_lines.create(price: 20+10)
      tmo_essentials_hotpost.carrier_lines.create(price: 20+10)
      tmo_essentials_hotpost.carrier_lines.create(price: 20+10)

  tmo_55 = tmo.carrier_plans.create(
    plan_type: 'Unlimited 55',
    name: 'One', 
    data_amount: Float::INFINITY,
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 10,
    senior_pricing: true,
    military_pricing: false,
    mix_and_match: true,
    match_id: 2)
      tmo_55.carrier_lines.create(price: 55)
      tmo_55.carrier_lines.create(price: 25)

  tmo_55_one_plus = tmo.carrier_plans.create(
    plan_type: 'Unlimited 55',
    name: 'One Plus',
    data_amount: Float::INFINITY,
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 10,
    senior_pricing: true,
    military_pricing: false,
    mix_and_match: true,
    match_id: 2)
      tmo_55_one_plus.carrier_lines.create(price: 55 + 15)
      tmo_55_one_plus.carrier_lines.create(price: 25 + 15)

  tmo_55_one_plus_family_pricing = tmo.carrier_plans.create(
    plan_type: 'Unlimited 55',
    name: 'One Plus', 
    data_amount: Float::INFINITY,
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 2,
    auto_pay: 5,
    max_auto_pay: 10,
    senior_pricing: true,
    military_pricing: false,
    mix_and_match: false,
    match_id: nil)
      tmo_55_one_plus_family_pricing.carrier_lines.create(price: 55 + 10)
      tmo_55_one_plus_family_pricing.carrier_lines.create(price: 25 + 10)

  military_one = tmo.carrier_plans.create(
    plan_type: 'Military One',
    name: 'One',
    data_amount: Float::INFINITY,
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: true,
    mix_and_match: true,
    match_id: 3)
      military_one.carrier_lines.create(price: 60)
      military_one.carrier_lines.create(price: 30)
      military_one.carrier_lines.create(price: 15)
      military_one.carrier_lines.create(price: 15)
      military_one.carrier_lines.create(price: 15)
      military_one.carrier_lines.create(price: 15)
      military_one.carrier_lines.create(price: 25)
      military_one.carrier_lines.create(price: 25)
      military_one.carrier_lines.create(price: 30)
      military_one.carrier_lines.create(price: 30)
      military_one.carrier_lines.create(price: 30)
      military_one.carrier_lines.create(price: 30)

  military_one_plus = tmo.carrier_plans.create(
    plan_type: 'Military One',
    name: 'One Plus',
    data_amount: Float::INFINITY,
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: true,
    mix_and_match: true,
    match_id: 3)
      military_one_plus.carrier_lines.create(price: 60+15)
      military_one_plus.carrier_lines.create(price: 30+15)
      military_one_plus.carrier_lines.create(price: 15+15)
      military_one_plus.carrier_lines.create(price: 15+15)
      military_one_plus.carrier_lines.create(price: 15+15)
      military_one_plus.carrier_lines.create(price: 15+15)
      military_one_plus.carrier_lines.create(price: 25+15)
      military_one_plus.carrier_lines.create(price: 25+15)
      military_one_plus.carrier_lines.create(price: 30+15)
      military_one_plus.carrier_lines.create(price: 30+15)
      military_one_plus.carrier_lines.create(price: 30+15)
      military_one_plus.carrier_lines.create(price: 30+15)

  military_one_plus_family = tmo.carrier_plans.create(
    plan_type: 'Military One',
    name: 'One Plus',
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 2,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: true,
    mix_and_match: false,
    match_id: nil)
      military_one_plus_family.carrier_lines.create(price: 60+10)
      military_one_plus_family.carrier_lines.create(price: 30+10)
      military_one_plus_family.carrier_lines.create(price: 15+10)
      military_one_plus_family.carrier_lines.create(price: 15+10)
      military_one_plus_family.carrier_lines.create(price: 15+10)
      military_one_plus_family.carrier_lines.create(price: 15+10)
      military_one_plus_family.carrier_lines.create(price: 25+10)
      military_one_plus_family.carrier_lines.create(price: 25+10)
      military_one_plus_family.carrier_lines.create(price: 30+10)
      military_one_plus_family.carrier_lines.create(price: 30+10)
      military_one_plus_family.carrier_lines.create(price: 30+10)
      military_one_plus_family.carrier_lines.create(price: 30+10)

  tmo_one = tmo.carrier_plans.create(
    plan_type: 'One',
    name: 'One',
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: false,
    mix_and_match: true,
    match_id: 4)
      tmo_one.carrier_lines.create(price: 75)
      tmo_one.carrier_lines.create(price: 55)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 30)
      tmo_one.carrier_lines.create(price: 30)
      tmo_one.carrier_lines.create(price: 30)
      tmo_one.carrier_lines.create(price: 30)

  tmo_one_plus = tmo.carrier_plans.create(
    plan_type: 'One',
    name: 'One Plus',
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: false,
    mix_and_match: true,
    match_id: 4)
      tmo_one_plus.carrier_lines.create(price: 75+15)
      tmo_one_plus.carrier_lines.create(price: 55+15)
      tmo_one_plus.carrier_lines.create(price: 25+15)
      tmo_one_plus.carrier_lines.create(price: 25+15)
      tmo_one_plus.carrier_lines.create(price: 25+15)
      tmo_one_plus.carrier_lines.create(price: 25+15)
      tmo_one_plus.carrier_lines.create(price: 25+15)
      tmo_one_plus.carrier_lines.create(price: 25+15)
      tmo_one_plus.carrier_lines.create(price: 30+15)
      tmo_one_plus.carrier_lines.create(price: 30+15)
      tmo_one_plus.carrier_lines.create(price: 30+15)
      tmo_one_plus.carrier_lines.create(price: 30+15)

  tmo_one_plus_family_pricing = tmo.carrier_plans.create(
    plan_type: 'One',
    name: 'One Plus',
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 2,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: false,
    mix_and_match: false,
    match_id: nil)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 75+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 55+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 25+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 25+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 25+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 25+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 25+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 25+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 30+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 30+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 30+10)
      tmo_one_plus_family_pricing.carrier_lines.create(price: 30+10)

puts 'T-Mobile Plans created!'

#Verizon Plans

verizon = Carrier.create(name:'Verizon')
  shared_plan_2gb = verizon.carrier_plans.create(
    name: 'Shared Data',
    data_amount: 2,
    data_price: 35,
    hd_video: true,
    hotspot_lte: 2,
    hotspot_3g: 0,
    soft_cap: 2,
    min_lines: 1,
    auto_pay: 0,
    max_auto_pay: 0,
    senior_pricing: false,
    military_pricing: false)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)
      shared_plan_2gb.carrier_lines.create(price: 20)

  shared_plan_4gb = verizon.carrier_plans.create(
    name: 'Shared Data', 
    data_amount: 4, 
    data_price: 50,
    hd_video: true,
    hotspot_lte: 4,
    hotspot_3g: 0,
    soft_cap: 4,
    min_lines: 1,
    auto_pay: 0,
    max_auto_pay: 0,
    senior_pricing: false,
    military_pricing: false)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)
      shared_plan_4gb.carrier_lines.create(price: 20)

  shared_plan_5gb = verizon.carrier_plans.create(
    name: 'Shared Data', 
    data_amount: 5, 
    data_price: 40,
    hd_video: true,
    hotspot_lte: 5,
    hotspot_3g: 0,
    soft_cap: 5,
    min_lines: 1,
    auto_pay: 0,
    max_auto_pay: 0,
    senior_pricing: false,
    military_pricing: false)
      shared_plan_5gb.carrier_lines.create(price: 20)

  shared_plan_8gb = verizon.carrier_plans.create(
    name: 'Shared Data', 
    data_amount: 8, 
    data_price: 70,
    hd_video: true,
    hotspot_lte: 8,
    hotspot_3g: 0,
    soft_cap: 8,
    min_lines: 1,
    auto_pay: 0,
    max_auto_pay: 0,
    senior_pricing: false,
    military_pricing: false)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)
      shared_plan_8gb.carrier_lines.create(price: 20)

  go_unlimited = verizon.carrier_plans.create(
    plan_type: 'Mix & Match',
    name: 'Go',
    data_amount: Float::INFINITY, 
    data_price: 0,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    hd_video: false,
    soft_cap: 0,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      go_unlimited.carrier_lines.create(price: 80)
      go_unlimited.carrier_lines.create(price: 70)
      go_unlimited.carrier_lines.create(price: 55)
      go_unlimited.carrier_lines.create(price: 45)
      go_unlimited.carrier_lines.create(price: 45)
      go_unlimited.carrier_lines.create(price: 45)
      go_unlimited.carrier_lines.create(price: 45)
      go_unlimited.carrier_lines.create(price: 45)
      go_unlimited.carrier_lines.create(price: 45)
      go_unlimited.carrier_lines.create(price: 45)

  beyond_unlimited = verizon.carrier_plans.create(
    plan_type: 'Mix & Match',
    name: 'Beyond', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 15,
    hotspot_3g: Float::INFINITY,
    soft_cap: 22,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      beyond_unlimited.carrier_lines.create(price: 90)
      beyond_unlimited.carrier_lines.create(price: 85)
      beyond_unlimited.carrier_lines.create(price: 65)
      beyond_unlimited.carrier_lines.create(price: 55)
      beyond_unlimited.carrier_lines.create(price: 55)
      beyond_unlimited.carrier_lines.create(price: 55)
      beyond_unlimited.carrier_lines.create(price: 55)
      beyond_unlimited.carrier_lines.create(price: 55)
      beyond_unlimited.carrier_lines.create(price: 55)
      beyond_unlimited.carrier_lines.create(price: 55)

  above_unlimited = verizon.carrier_plans.create(
    plan_type: 'Mix & Match',
    name: 'Above', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 75,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      above_unlimited.carrier_lines.create(price: 100)
      above_unlimited.carrier_lines.create(price: 95)
      above_unlimited.carrier_lines.create(price: 75)
      above_unlimited.carrier_lines.create(price: 65)
      above_unlimited.carrier_lines.create(price: 65)
      above_unlimited.carrier_lines.create(price: 65)
      above_unlimited.carrier_lines.create(price: 65)
      above_unlimited.carrier_lines.create(price: 65)
      above_unlimited.carrier_lines.create(price: 65)
      above_unlimited.carrier_lines.create(price: 65)

    puts 'Verizon Plans created!'



#AT&T Plans

att = Carrier.create(name:'AT&T')
  flex_share_1gb = att.carrier_plans.create(
    name: 'Mobile Share', 
    data_amount: 1, 
    data_price: 35,
    hd_video: true,
    hotspot_lte: 1,
    hotspot_3g: 0,
    soft_cap: 1,
    min_lines: 1,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)
      flex_share_1gb.carrier_lines.create(price: 20)

  flex_share_5gb = att.carrier_plans.create(
    name: 'Mobile Share', 
    data_amount: 5, 
    data_price: 60,
    hd_video: true,
    hotspot_lte: 5,
    hotspot_3g: 0,
    soft_cap: 5,
    min_lines: 1,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)
      flex_share_5gb.carrier_lines.create(price: 20)

  flex_share_10gb = att.carrier_plans.create(
    name: 'Mobile Share', 
    data_amount: 10, 
    data_price: 85,
    hd_video: true,
    hotspot_lte: 10,
    hotspot_3g: 0,
    soft_cap: 10,
    min_lines: 1,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)
      flex_share_10gb.carrier_lines.create(price: 20)

  flex_share_20gb = att.carrier_plans.create(
    name: 'Mobile Share', 
    data_amount: 20, 
    data_price: 110,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: 0,
    soft_cap: 20,
    min_lines: 1,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)
      flex_share_20gb.carrier_lines.create(price: 20)

  unlimited_single_line = att.carrier_plans.create(
    name: 'Basic Unlimited', 
    data_amount: Float::INFINITY, 
    data_price: 55,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 0,
    min_lines: 1,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
    unlimited_single_line.carrier_lines.create(price: 35)

  unlimited_premium_single_line = att.carrier_plans.create(
    name: 'Premium Unlimited', 
    data_amount: Float::INFINITY, 
    data_price: 65,
    hd_video: true,
    hotspot_lte: 15,
    hotspot_3g: 0,
    soft_cap: 22,
    min_lines: 1,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
      unlimited_premium_single_line.carrier_lines.create(price: 35)

  unlimited = att.carrier_plans.create(
    name: 'Unlimited', 
    data_amount: Float::INFINITY, 
    data_price: 95,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 0,
    min_lines: 2,
    auto_pay: 20,
    max_auto_pay: 20,
    senior_pricing: false,
    military_pricing: false)
      unlimited.carrier_lines.create(price: 35)
      unlimited.carrier_lines.create(price: 35)
      unlimited.carrier_lines.create(price: 20)
      unlimited.carrier_lines.create(price: 15)
      unlimited.carrier_lines.create(price: 35)
      unlimited.carrier_lines.create(price: 35)
      unlimited.carrier_lines.create(price: 35)
      unlimited.carrier_lines.create(price: 35)
      unlimited.carrier_lines.create(price: 35)
      unlimited.carrier_lines.create(price: 35)

  unlimited_premium = att.carrier_plans.create(
    name: 'Premium Unlimited', 
    data_amount: Float::INFINITY, 
    data_price: 120,
    hd_video: true,
    hotspot_lte: 15,
    hotspot_3g: 0,
    soft_cap: 22,
    min_lines: 2,
    auto_pay: 20,
    max_auto_pay: 20,
    senior_pricing: false,
    military_pricing: false)
      unlimited_premium.carrier_lines.create(price: 35)
      unlimited_premium.carrier_lines.create(price: 35)
      unlimited_premium.carrier_lines.create(price: 20)
      unlimited_premium.carrier_lines.create(price: 20)
      unlimited_premium.carrier_lines.create(price: 35)
      unlimited_premium.carrier_lines.create(price: 35)
      unlimited_premium.carrier_lines.create(price: 35)
      unlimited_premium.carrier_lines.create(price: 35)
      unlimited_premium.carrier_lines.create(price: 35)
      unlimited_premium.carrier_lines.create(price: 35)

    puts 'AT&T Plans created!'

#Sprint Plans


sprint = Carrier.create(name:'Sprint')
  two_gb = sprint.carrier_plans.create(
    name: '2GB', 
    data_amount: 2, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 2,
    hotspot_3g: 0,
    soft_cap: 2,
    min_lines: 1,
    auto_pay: 0,
    max_auto_pay: 0,
    senior_pricing: false,
    military_pricing: false)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)
      two_gb.carrier_lines.create(price: 40)

  unlimited_basic_promo = sprint.carrier_plans.create(
    name: 'Unlimited Basic Promo', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 4,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      unlimited_basic_promo.carrier_lines.create(price: 65)
      unlimited_basic_promo.carrier_lines.create(price: 45)
      unlimited_basic_promo.carrier_lines.create(price: 25)
      unlimited_basic_promo.carrier_lines.create(price: 5)
      unlimited_basic_promo.carrier_lines.create(price: 5)
      unlimited_basic_promo.carrier_lines.create(price: 25)
      unlimited_basic_promo.carrier_lines.create(price: 25)
      unlimited_basic_promo.carrier_lines.create(price: 25)
      unlimited_basic_promo.carrier_lines.create(price: 25)
      unlimited_basic_promo.carrier_lines.create(price: 25)

  unlimited_basic = sprint.carrier_plans.create(
    name: 'Unlimited Basic', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      unlimited_basic.carrier_lines.create(price: 65)
      unlimited_basic.carrier_lines.create(price: 45)
      unlimited_basic.carrier_lines.create(price: 35)
      unlimited_basic.carrier_lines.create(price: 35)
      unlimited_basic.carrier_lines.create(price: 35)
      unlimited_basic.carrier_lines.create(price: 35)
      unlimited_basic.carrier_lines.create(price: 35)
      unlimited_basic.carrier_lines.create(price: 35)
      unlimited_basic.carrier_lines.create(price: 35)
      unlimited_basic.carrier_lines.create(price: 35)

  unlimited_plus = sprint.carrier_plans.create(
    name: 'Unlimited Plus', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 15,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    min_lines: 1,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      unlimited_plus.carrier_lines.create(price: 75)
      unlimited_plus.carrier_lines.create(price: 55)
      unlimited_plus.carrier_lines.create(price: 35)
      unlimited_plus.carrier_lines.create(price: 35)
      unlimited_plus.carrier_lines.create(price: 35)
      unlimited_plus.carrier_lines.create(price: 35)
      unlimited_plus.carrier_lines.create(price: 35)
      unlimited_plus.carrier_lines.create(price: 35)
      unlimited_plus.carrier_lines.create(price: 35)
      unlimited_plus.carrier_lines.create(price: 35)

    puts 'Sprint Plans created!'