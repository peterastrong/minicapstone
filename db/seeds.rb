Beer.create!([
  {brand: "Sixpoint Brewery", style: "ale", name: "Bengali", package_size: "6", bottle_size: "12oz", rating_1to99: "75", price: "11.99", description: "Sixpoint is now the local macrobrew of Brooklyn.", in_stock: nil, supplier_id: 2},
  {brand: "New England Brewing Company", style: "American IPA", name: "Fuzzy Baby Ducks", package_size: "6", bottle_size: "12", rating_1to99: "99 ", price: "15.95", description: nil, in_stock: nil, supplier_id: 7},
  {brand: "crappy", style: "lager", name: "crappy lager", package_size: "12", bottle_size: "12", rating_1to99: "1", price: "1.99", description: nil, in_stock: nil, supplier_id: 5},
  {brand: "Beer", style: "Beer", name: "Beer", package_size: "6", bottle_size: "12", rating_1to99: "5", price: "3.99", description: "not so good", in_stock: nil, supplier_id: 2},
  {brand: "New Belgium ", style: "Amber Ale", name: "Fat Tire", package_size: "6", bottle_size: "12", rating_1to99: "40", price: "8.99", description: "decent stuff", in_stock: nil, supplier_id: 2},
  {brand: nil, style: "Imperial IPA", name: "Voodoo Ranger", package_size: "6", bottle_size: "12", rating_1to99: "55", price: "9.99", description: "A rare blend of choice hops creates an explosion of fresh-cut pine and citrus flavors for a complex, rich and delicious flavor.", in_stock: nil, supplier_id: 5},
  {brand: "Anchor Brewery", style: "IPA", name: "Anchor IPA", package_size: "6", bottle_size: "12oz", rating_1to99: "55", price: "9.99", description: "Solid IPA choice. ", in_stock: nil, supplier_id: 1},
  {brand: "Other Half", style: "Imperial IPA", name: "All Dank Everything", package_size: "6", bottle_size: "16", rating_1to99: "95", price: "14.99", description: "FANTASTIC!", in_stock: nil, supplier_id: 1},
  {brand: "The Ommegang", style: "Farmhouse Ale, Golden Ale", name: "Hennepin", package_size: "Single", bottle_size: "", rating_1to99: "45", price: "12.99", description: nil, in_stock: nil, supplier_id: 1},
  {brand: "Brooklyn Brewery", style: "lager", name: "Brooklyn Lager", package_size: "6", bottle_size: "12oz", rating_1to99: "45", price: "9.98", description: nil, in_stock: nil, supplier_id: 2}
])
BeerCategory.create!([
  {beer_id: 2, category_id: 1},
  {beer_id: 2, category_id: 3},
  {beer_id: 1, category_id: 1},
  {beer_id: 5, category_id: 4},
  {beer_id: 14, category_id: 4}
])
CartedProduct.create!([
  {user_id: 3, beer_id: 12, quantity: 3, status: "purchased", order_id: 15},
  {user_id: 3, beer_id: 12, quantity: 2, status: "purchased", order_id: 15},
  {user_id: 3, beer_id: 14, quantity: 1, status: "purchased", order_id: 15},
  {user_id: 3, beer_id: 13, quantity: 1, status: "purchased", order_id: 15},
  {user_id: 3, beer_id: 2, quantity: 1, status: "purchased", order_id: 15},
  {user_id: 3, beer_id: 14, quantity: 1, status: "purchased", order_id: 15},
  {user_id: 3, beer_id: 19, quantity: 1, status: "purchased", order_id: 16},
  {user_id: 3, beer_id: 5, quantity: 1, status: "purchased", order_id: 17},
  {user_id: 3, beer_id: 13, quantity: 1, status: "purchased", order_id: 17},
  {user_id: 3, beer_id: 1, quantity: 1, status: "purchased", order_id: 18},
  {user_id: 3, beer_id: 14, quantity: 2, status: "purchased", order_id: 19},
  {user_id: 3, beer_id: 13, quantity: 1, status: "purchased", order_id: 20},
  {user_id: 3, beer_id: 14, quantity: 2, status: "removed", order_id: nil},
  {user_id: 3, beer_id: 1, quantity: 3, status: "removed", order_id: nil},
  {user_id: 3, beer_id: 2, quantity: 5, status: "purchased", order_id: 21},
  {user_id: 3, beer_id: 13, quantity: 2, status: "purchased", order_id: 22},
  {user_id: 3, beer_id: 19, quantity: 2, status: "purchased", order_id: 23},
  {user_id: 3, beer_id: 2, quantity: 3, status: "purchased", order_id: 23},
  {user_id: 3, beer_id: 14, quantity: 10, status: "purchased", order_id: 23},
  {user_id: 3, beer_id: 13, quantity: 2, status: "purchased", order_id: 24},
  {user_id: 3, beer_id: 14, quantity: 3, status: "purchased", order_id: 24},
  {user_id: 2, beer_id: 13, quantity: 4, status: "purchased", order_id: 25},
  {user_id: 2, beer_id: 1, quantity: 4, status: "purchased", order_id: 25}
])
Category.create!([
  {name: "crisp"},
  {name: "sour"},
  {name: "dark"},
  {name: "hoppy"},
  {name: "light"}
])
Image.create!([
  {url: "http://www.therealalecompany.co.uk/media/catalog/product/cache/1/image/328x398/9df78eab33525d08d6e5fb8d27136e95/b/r/brooklyn_lager_canned_2.jpg", beer_id: 1},
  {url: "https://c.o0bg.com/rf/image_371w/Boston/2011-2020/2015/01/22/BostonGlobe.com/Lifestyle/Images/Bengali_Solo_Mashtun(1)AA.jpg", beer_id: 2},
  {url: "http://s3.amazonaws.com/anchor_cms_production/beers/15/original/anchor_ipa_bio_can.png?1470869601", beer_id: 5},
  {url: "http://www.angelfire.com/wi/beercans/images24/scha23.jpg", beer_id: 12},
  {url: "https://static1.squarespace.com/static/54f0c3cbe4b0a7e48106b221/57448d80b09f959bfab40782/5744930445bf218cc683ea7a/1464111885503/allDank.jpg?format=750w", beer_id: 13},
  {url: "http://newenglandbrewing.com/img/logo.jpg", beer_id: 14},
  {url: "http://brewspotting.com/wp-content/uploads/2015/06/ommegang-hennepin-farmhouse-saison-275x275.jpg", beer_id: 19},
  {url: "https://res.cloudinary.com/ratebeer/image/upload/w_250,c_limit/beer_473814.jpg", beer_id: 23}
])
Order.create!([
  {user_id: 2, subtotal: "44.97", tax: "4.05", total: "49.02"},
  {user_id: 2, subtotal: "9.99", tax: "0.9", total: "10.89"},
  {user_id: 2, subtotal: "9.99", tax: "0.9", total: "10.89"},
  {user_id: 3, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 3, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 3, subtotal: "52.88", tax: "4.76", total: "57.64"},
  {user_id: 3, subtotal: "68.83", tax: "6.19", total: "75.02"},
  {user_id: 3, subtotal: "12.99", tax: "1.17", total: "14.16"},
  {user_id: 3, subtotal: "24.98", tax: "2.25", total: "27.23"},
  {user_id: 3, subtotal: "9.98", tax: "0.9", total: "10.88"},
  {user_id: 3, subtotal: "31.9", tax: "2.87", total: "34.77"},
  {user_id: 3, subtotal: "14.99", tax: "1.35", total: "16.34"},
  {user_id: 3, subtotal: "59.95", tax: "5.4", total: "65.35"},
  {user_id: 3, subtotal: "29.98", tax: "2.7", total: "32.68"},
  {user_id: 3, subtotal: "221.45", tax: "19.93", total: "241.38"},
  {user_id: 3, subtotal: "77.83", tax: "7.0", total: "84.83"},
  {user_id: 2, subtotal: "99.88", tax: "8.99", total: "108.87"}
])
Supplier.create!([
  {name: "Sixpoint Brewery", email: "info@sixpoint.com", phone: "555-333-2222"},
  {name: "Cigar City", email: "info@cigarcity.com", phone: "999-888-7777"},
  {name: "Crappy Brewery", email: "info@crappybrewery.com", phone: "777-222-4444"},
  {name: "New England Brewery", email: "info@nebrewery.com", phone: "888-999-0987"},
  {name: "Anchor Brewery", email: "info@anchor.com", phone: "777-222-3334"}
])
User.create!([
  {name: "John", email: "john@john.com", password_digest: "$2a$10$xYycA8DWFc2pcBPR8KQ2bO23lL2LQEM/VjcUdiWIg2tLHTcDNQImu", admin: false},
  {name: "Peter", email: "peter@peter.com", password_digest: "$2a$10$Xwe58jVhAFBVLaQm7NJQTeDYjJ0vzOT1ZC0XXkXL/jt3EFmgZbZRm", admin: true},
  {name: "amy ", email: "amy@amy.com", password_digest: "$2a$10$XM6B26kiF.z.ZFKuh.DjQuq2CGKGBQhJTUsL0ZR3AfYkArbDs66eW", admin: false},
  {name: "Bill", email: "bill@bill.com", password_digest: "$2a$10$KmQ5uhcFtSaRzdOQA0BDMufQyMXfhqcMqUINai.uZAaz7v9RIKiLW", admin: false},
  {name: "Happy Guy", email: "happy@happy.com", password_digest: "$2a$10$YZQbZOgrWpgZr4z0xHBdVetOtNiqxMShItM7TCcsSdhBV.steVh.a", admin: false},
  {name: "Sad Person", email: "sad@sad.com", password_digest: "$2a$10$04zB68hETv2LluOogyjV7ucKuaf8GL4Kk4wYOzTMoVexqlwBaFdLO", admin: false}
])
