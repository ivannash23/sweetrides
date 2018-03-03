# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bike.delete_all

Bike.create([
	{user_id:'5', brand: 'Yamaha', model: 'XS400', avatar: 'https://www.motorcycleclassics.com/-/media/Images/MCC/Editorial/Articles/Magazine-Articles/2017/11-01/4-Stroke-Fun-1977-1982-Yamaha-XS400/Yamaha-XS400-1977-jpg.jpg'},
	{user_id:'6', brand: 'Honda', model: 'CB 550 K1', avatar: 'https://www.classicdriver.com/sites/default/files/bike_images/cb_550_sl_1.jpg'},
	{user_id:'7', brand: 'Norton', model: '4 RR', avatar: 'http://images.firstpost.com/wp-content/uploads/2017/11/Norton-Commando-380.jpg'},
	{user_id:'8', brand: 'Norton', model: 'P11', avatar: 'https://s-media-cache-ak0.pinimg.com/originals/1e/fa/8b/1efa8bdde7445e307abd3d80d7cfd09d.jpg'},
	{user_id:'6', brand: 'Triumph', model: '3T', avatar: 'http://www.roncobb.com/Graphics/Tri-1949-9LOGO.JPG'},
	{user_id:'5', brand: 'Yamaha', model: 'RZ500', avatar: 'https://rmdmotors.com/wp-content/uploads/2015/11/DSC004233.jpg'}
	])