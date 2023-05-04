# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Exemption.create(exempt_dat: '25/12/2023', exempt_msg: 'Closed for xmas day', lunch: true, dinner: true)
Exemption.create(exempt_dat: '26/12/2023', exempt_msg: 'Closed for Boxing day', lunch: true, dinner: true)
Exemption.create(exempt_dat: '27/12/2023', exempt_msg: 'Closed for staff holiday', lunch: true, dinner: true)
Exemption.create(exempt_dat: '30/04/2023', exempt_msg: 'Closed for Coronation', lunch: true, dinner: true)
Restaurant.create(account_id:1, name:"Kath's Cafe")
Rdetail.create(restaurant_id:1, booking_duration:120, last_booking_time: "21:00", min_booking:1, max_booking:8,big_table_count:4, max_diners_at_current_time:120,)
OpeningHour.create(day:1, open:false, restaurant_id:1)
OpeningHour.create(day:2, open:false, restaurant_id:1)
OpeningHour.create(day:3, open:true, restaurant_id:1)
OpeningHour.create(day:4, open:true, restaurant_id:1)
OpeningHour.create(day:5, open:true, restaurant_id:1)
OpeningHour.create(day:6, open:true, restaurant_id:1)
OpeningHour.create(day:0, open:true, restaurant_id:1  )
Sitting.create(opening_hour_id:3, start_time:'01/01/2000 12:00', end_time:'01/01/2000 17:00')
Sitting.create(opening_hour_id:4, start_time:'01/01/2000 12:00', end_time:'01/01/2000 17:00')
Sitting.create(opening_hour_id:5, start_time:'01/01/2000 12:00', end_time:'01/01/2000 17:00')
Sitting.create(opening_hour_id:6, start_time:'01/01/2000 12:00', end_time:'01/01/2000 16:00')
Sitting.create(opening_hour_id:7, start_time:'01/01/2000 12:00', end_time:'01/01/2000 16:00')
Sitting.create(opening_hour_id:6, start_time:'01/01/2000 17:00', end_time:'01/01/2000 22:00')
Sitting.create(opening_hour_id:7, start_time:'01/01/2000 17:00', end_time:'01/01/2000 22:00')
