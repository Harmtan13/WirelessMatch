#T-Mobile Plans

tmo = Carrier.create(name:'T-Mobile')

  tmo_55 = tmo.carrier_plans.create(
    name: 'Unlimited 55', 
    data_amount: Float::INFINITY,
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    max_lines: 12,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: true,
    military_pricing: false)
      tmo_55.carrier_lines.create(price: 55)
      tmo_55.carrier_lines.create(price: 25)

  military_one = tmo.carrier_plans.create(
    name: 'One Military', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    max_lines: 12,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: true)
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

  tmo_one = tmo.carrier_plans.create(
    name: 'One', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    max_lines: 12,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: false)
      tmo_one.carrier_lines.create(price: 75)
      tmo_one.carrier_lines.create(price: 55)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)
      tmo_one.carrier_lines.create(price: 25)

  tmo_one_plus = tmo.carrier_plans.create(
    name: 'One Plus', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 10,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    max_lines: 12,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: false)
      tmo_one_plus.carrier_lines.create(price: 75+10)
      tmo_one_plus.carrier_lines.create(price: 55+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)
      tmo_one_plus.carrier_lines.create(price: 25+10)

  tmo_one_plus_international = tmo.carrier_plans.create(
    name: 'One Plus International', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: Float::INFINITY,
    hotspot_3g: Float::INFINITY,
    soft_cap: 50,
    max_lines: 12,
    auto_pay: 5,
    max_auto_pay: 40,
    senior_pricing: false,
    military_pricing: false)
      tmo_one_plus_international.carrier_lines.create(price: 75+25)
      tmo_one_plus_international.carrier_lines.create(price: 55+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)
      tmo_one_plus_international.carrier_lines.create(price: 25+25)

puts 'T-Mobile Plans created!'

#Verizon Plans

verizon = Carrier.create(name:'Verizon')
  shared_plan_2gb = verizon.carrier_plans.create(
    name: 'Shared Data 2GB',
    data_amount: 2,
    data_price: 35,
    hd_video: true,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 2,
    max_lines: 10,
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
    name: 'Shared Data 4GB', 
    data_amount: 4, 
    data_price: 50,
    hd_video: true,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 4,
    max_lines: 10,
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
    name: 'Shared Data 5GB', 
    data_amount: 5, 
    data_price: 40,
    hd_video: true,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 5,
    max_lines: 1,
    auto_pay: 0,
    max_auto_pay: 0,
    senior_pricing: false,
    military_pricing: false)
      shared_plan_5gb.carrier_lines.create(price: 20)

  shared_plan_8gb = verizon.carrier_plans.create(
    name: 'Shared Data 8GB', 
    data_amount: 8, 
    data_price: 70,
    hd_video: true,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 8,
    max_lines: 10,
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
    name: 'Go-Unlimited', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hotspot_lte: 0,
    hotspot_3g: Float::INFINITY,
    hd_video: false,
    soft_cap: 0,
    max_lines: 10,
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
    name: 'Beyond Unlimited', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 15,
    hotspot_3g: Float::INFINITY,
    soft_cap: 22,
    max_lines: 10,
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
    name: 'Above Unlimited', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: Float::INFINITY,
    soft_cap: 75,
    max_lines: 10,
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
    name: 'Mobile Share Flex 1GB', 
    data_amount: 1, 
    data_price: 35,
    hd_video: true,
    hotspot_lte: 1,
    hotspot_3g: 0,
    soft_cap: 1,
    max_lines: 10,
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
    name: 'Mobile Share Flex 5GB', 
    data_amount: 5, 
    data_price: 60,
    hd_video: true,
    hotspot_lte: 5,
    hotspot_3g: 0,
    soft_cap: 5,
    max_lines: 10,
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
    name: 'Mobile Share Flex 10GB', 
    data_amount: 10, 
    data_price: 85,
    hd_video: true,
    hotspot_lte: 10,
    hotspot_3g: 0,
    soft_cap: 10,
    max_lines: 10,
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
    name: 'Mobile Share Flex 20GB', 
    data_amount: 20, 
    data_price: 110,
    hd_video: true,
    hotspot_lte: 20,
    hotspot_3g: 0,
    soft_cap: 20,
    max_lines: 10,
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
    name: 'Unlimited & More Single', 
    data_amount: Float::INFINITY, 
    data_price: 55,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 0,
    max_lines: 1,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
    unlimited_single_line.carrier_lines.create(price: 35)

  unlimited_premium_single_line = att.carrier_plans.create(
    name: 'Unlimited & More Premium Single', 
    data_amount: Float::INFINITY, 
    data_price: 65,
    hd_video: true,
    hotspot_lte: 15,
    hotspot_3g: 0,
    soft_cap: 22,
    max_lines: 10,
    auto_pay: 10,
    max_auto_pay: 10,
    senior_pricing: false,
    military_pricing: false)
      unlimited_premium_single_line.carrier_lines.create(price: 35)

  unlimited = att.carrier_plans.create(
    name: 'Unlimited & More', 
    data_amount: Float::INFINITY, 
    data_price: 95,
    hd_video: false,
    hotspot_lte: 0,
    hotspot_3g: 0,
    soft_cap: 0,
    max_lines: 10,
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
    name: 'Unlimited & More Premium', 
    data_amount: Float::INFINITY, 
    data_price: 120,
    hd_video: true,
    hotspot_lte: 15,
    hotspot_3g: 0,
    soft_cap: 22,
    max_lines: 10,
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
    max_lines: 1,
    auto_pay: 0,
    max_auto_pay: 0,
    senior_pricing: false,
    military_pricing: false)
      two_gb.carrier_lines.create(price: 40)

  unlimited_freedom_promo = sprint.carrier_plans.create(
    name: 'Unlimited Freedom Promo', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hd_video: true,
    hotspot_lte: 10,
    hotspot_3g: Float::INFINITY,
    soft_cap: 23,
    max_lines: 10,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      unlimited_freedom_promo.carrier_lines.create(price: 65)
      unlimited_freedom_promo.carrier_lines.create(price: 45)
      unlimited_freedom_promo.carrier_lines.create(price: 5)
      unlimited_freedom_promo.carrier_lines.create(price: 5)
      unlimited_freedom_promo.carrier_lines.create(price: 5)
      unlimited_freedom_promo.carrier_lines.create(price: 35)
      unlimited_freedom_promo.carrier_lines.create(price: 35)
      unlimited_freedom_promo.carrier_lines.create(price: 35)
      unlimited_freedom_promo.carrier_lines.create(price: 35)
      unlimited_freedom_promo.carrier_lines.create(price: 35)

  unlimited_freedom = sprint.carrier_plans.create(
    name: 'Unlimited Freedom', 
    data_amount: Float::INFINITY, 
    data_price: 0,
    hotspot_lte: 10,
    hd_video: true,
    hotspot_3g: Float::INFINITY,
    soft_cap: 23,
    max_lines: 10,
    auto_pay: 5,
    max_auto_pay: 50,
    senior_pricing: false,
    military_pricing: false)
      unlimited_freedom.carrier_lines.create(price: 65)
      unlimited_freedom.carrier_lines.create(price: 45)
      unlimited_freedom.carrier_lines.create(price: 35)
      unlimited_freedom.carrier_lines.create(price: 35)
      unlimited_freedom.carrier_lines.create(price: 35)
      unlimited_freedom.carrier_lines.create(price: 35)
      unlimited_freedom.carrier_lines.create(price: 35)
      unlimited_freedom.carrier_lines.create(price: 35)
      unlimited_freedom.carrier_lines.create(price: 35)
      unlimited_freedom.carrier_lines.create(price: 35)

    puts 'Sprint Plans created!'

  #Quiz 1
  plan_one = UserPlan.create(
    line_quantity: 5, 
    auto_pay: false, 
    senior_pricing: false, 
    military_pricing: false
    )
      plan_one.user_lines.create(
        data_amount: 50, 
        hotspot: 15, 
        hd_video: false
        )
      plan_one.user_lines.create(
        data_amount: 5, 
        hotspot: 0, 
        hd_video: true
        )
      plan_one.user_lines.create(
        data_amount: 25, 
        hotspot: 15, 
        hd_video: true
        )
      plan_one.user_lines.create(
        data_amount: 5, 
        hotspot: 0, 
        hd_video: true
        )
      plan_one.user_lines.create(
        data_amount: 2, 
        hotspot: 0, 
        hd_video: false
        )
    
  # Quiz 2
  plan_two = UserPlan.create(
    line_quantity: 1, 
    auto_pay: false, 
    senior_pricing: false, 
    military_pricing: false
    )
      plan_two.user_lines.create(
        data_amount: 50, 
        hotspot: 9, 
        hd_video: false
        )

  puts 'Two Quizzes created'