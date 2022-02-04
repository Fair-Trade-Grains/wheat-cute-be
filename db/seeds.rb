# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
farmer_1 = Farmer.create!({name: 'Clark Kent', email: 'c.kent@dailyplanet.com', phone: '555-555-5555', address: '1234 Farm Rd, Smallville KA', region: 'South', bio: 'A super-son of farmers who practices earth saving techniques. Restorative Farming.', photo_url: 'picture_link_here.jpeg'})
farmer_2 = Farmer.create!({name: 'Owen Lars', email: 'uncleowen@moisturefarms.com', phone: '555-555-5555', address: '5678 Dusty Rd, Tatooine, OK', region: 'South', bio: 'Starting a farming rebellion with my wife and nephew. Biosynthesis.', photo_url: 'picture_link_here.jpeg'})
farmer_3 = Farmer.create!({name: 'Will Wheaton', email: 'notthatone@willwheatonfarms.com', phone: '555-555-5555', address: '3456 Med Bay Ave, Starfield, MI', region: 'Central', bio: 'Growing grain thats out of this world! Restorative Farming Practices.', photo_url: 'picture_link_here.jpeg'})
farmer_4 = Farmer.create!({name: 'Brian Grain', email: 'braingrain@farmers.net', phone: '555-555-5555', address: '7812 Famers Rd Fargo, ND', region: 'North', bio: 'Farmings in-grained in my way of life. Practices orgainc techniques', photo_url: 'picture_link_here.jpeg'})
farmer_5 = Farmer.create!({name: 'Arthur Hoggett', email: 'a.hoggett@babefarms.com', phone: '555-555-5555', address: '84625 Main St, Spokane, WA', region: 'West', bio: "We don't say that'll do, we do that'll. Organic.", photo_url: 'picture_link_here.jpeg'})

grain_1 = Grain.create!({name: 'Amaranth', moisture: 12, falling_number: 236, protein: 13, test_weight: 55, farmers_notes: 'N/A', farmer_id: farmer_1.id})

grain_2 = Grain.create!({name: 'Rye', moisture: 8, falling_number: 200, protein: 14, test_weight: 60, farmers_notes: 'N/A', farmer_id: farmer_1.id})

grain_3 = Grain.create!({name: 'Wheat-Spelt', moisture: 14, falling_number: 175, protein: 10, test_weight: 54, farmers_notes: 'N/A', farmer_id: farmer_2.id})

grain_4 = Grain.create!({name: 'Rye', moisture: 10, falling_number: 250, protein: 16, test_weight: 51, farmers_notes: 'N/A', farmer_id: farmer_3.id})

grain_5 = Grain.create!({name: 'Barley', moisture: 9, falling_number: 275, protein: 9, test_weight: 53, farmers_notes: 'N/A', farmer_id: farmer_3.id})

grain_6 = Grain.create!({name: 'Buckwheat', moisture: 11, falling_number: 283, protein: 12, test_weight: 59, farmers_notes: 'N/A', farmer_id: farmer_4.id})

grain_7 = Grain.create!({name: 'Wheat-Emmer', moisture: 7, falling_number: 315, protein: 6, test_weight: 57, farmers_notes: 'N/A', farmer_id: farmer_4.id})

grain_8 = Grain.create!({name: 'Millet', moisture: 13, falling_number: 400, protein: 5, test_weight: 45, farmers_notes: 'N/A', farmer_id: farmer_5.id})
