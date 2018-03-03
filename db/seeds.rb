# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Bike.delete_all

Bike.create([
	{user_id:'5', brand: 'Yamaha', model: 'XS400', avatar: 'https://www.motorcycleclassics.com/-/media/Images/MCC/Editorial/Articles/Magazine-Articles/2017/11-01/4-Stroke-Fun-1977-1982-Yamaha-XS400/Yamaha-XS400-1977-jpg.jpg'},
	{user_id:'6', brand: 'Honda', model: 'CB 550 K1', avatar: 'https://www.classicdriver.com/sites/default/files/bike_images/cb_550_sl_1.jpg'},
	{user_id:'7', brand: 'Norton', model: '4 RR', avatar: 'http://images.firstpost.com/wp-content/uploads/2017/11/Norton-Commando-380.jpg'},
	{user_id:'8', brand: 'Norton', model: 'P11', avatar: 'https://s-media-cache-ak0.pinimg.com/originals/1e/fa/8b/1efa8bdde7445e307abd3d80d7cfd09d.jpg'},
	{user_id:'6', brand: 'Triumph', model: '3T', avatar: 'http://www.roncobb.com/Graphics/Tri-1949-9LOGO.JPG'},
	{user_id:'5', brand: 'Yamaha', model: 'RZ500', avatar: 'https://rmdmotors.com/wp-content/uploads/2015/11/DSC004233.jpg'}
	])

User.delete_all

User.create([
	{id: 6, email: "b@y.com", password: "123456", password_confirmation: "123456", created_at: "2018-03-03 19:17:39", updated_at: "2018-03-03 19:17:39", name: "Bruce", phone_number: Faker::PhoneNumber.cell_phone, location: Faker::Address.city, website: nil, avatar_file_name: Faker::Avatar.image},
	{ id: 7, email: "n@s.com", password: "123456", password_confirmation: "123456", created_at: "2018-03-03 19:17:54", updated_at: "2018-03-03 19:17:54", name: "Noah", phone_number: Faker::PhoneNumber.cell_phone, location: Faker::Address.city, website: nil, avatar_file_name: Faker::Avatar.image},
	{ id: 8, email: "p@p.com", password: "123456", password_confirmation: "123456", created_at: "2018-03-03 19:18:20", updated_at: "2018-03-03 19:18:20", name: "Peter", phone_number: Faker::PhoneNumber.cell_phone, location: Faker::Address.city, website: nil, avatar_file_name: Faker::Avatar.image},
	{ id: 9, email: "m@m.com", password: "123456", password_confirmation: "123456", created_at: "2018-03-03 19:18:47", updated_at: "2018-03-03 19:18:47", name: "Miles", phone_number: Faker::PhoneNumber.cell_phone, location: Faker::Address.city, website: nil, avatar_file_name: Faker::Avatar.image},
	{ id: 10, email: "f@t.com", password: "123456", password_confirmation: "123456", created_at: "2018-03-03 19:22:01", updated_at: "2018-03-03 19:22:01", name: "Flash", phone_number: Faker::PhoneNumber.cell_phone, location: Faker::Address.city, website: nil, avatar_file_name: Faker::Avatar.image},
	{ id: 5, email: "i@m.com", password: "123456", password_confirmation: "123456", created_at: "2018-02-28 20:29:24", updated_at: "2018-03-03 19:56:38", name: "Ivan", phone_number: Faker::PhoneNumber.cell_phone, location: Faker::Address.city, website: nil, avatar_file_name: Faker::Avatar.image}
	])