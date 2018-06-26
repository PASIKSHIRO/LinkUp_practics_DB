# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Table City
city = City.create(name: 'Ivano-Frankivsk')

#Table User
user1 = User.create(user_surname: 'Current', user_name: 'User', email: 'current_user@example.com', phone:"0973838014", city_id: city.id)
user2 = User.create(user_surname: 'Pasichunskiy', user_name: 'Yriy', email: 'shiropasik@gmail.com', phone:"0964728113", city_id: city.id)

#Table Item
item1 = Item.create(name_item: 'Skiing', description_item: 'Very cool skis',  user_id: user1.id)
item2 = Item.create(name_item: 'Skiing', description_item: 'Very cool skis',  user_id: user2.id)

#Table Booking
Booking.create(item_id: item1.id, data_start_rent: '2018-06-24 18:00:00', data_end_rent: '2018-06-26 18:00:00', user_id: user1.id)
Booking.create(item_id: item2.id, data_start_rent: '2018-06-24 18:00:00', data_end_rent: '2018-06-26 18:00:00', user_id: user2.id)

#Table Review
Review.create(title: 'Review for skiing', text_reviews: 'Very good skiing!', user_id: user1.id,
              response_type: 'Item', response_id: item1.id)
Review.create(title: 'Review for ski suit', text_reviews: 'Cool suit!!', user_id: user2.id,
              response_type: 'Item', response_id: item2.id)
Review.create(title: 'Rent', text_reviews: 'Responsible tenant', user_id: user1.id,
              response_type: 'User', response_id: user2.id)

