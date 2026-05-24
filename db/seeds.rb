# db/seeds.rb
Bean.destroy_all
Supplier.destroy_all

suppliers = Supplier.create!([
  { name: "Naz's Pacific Roasters",        address: "101 Harbor Blvd",    city: "Seattle",       state: "WA", email: "hello@nazpacific.com",     phone: "555-206-0101" },
  { name: "Rocky Mountain Brew Co.",        address: "88 Summit Ave",      city: "Denver",        state: "CO", email: "orders@rockymtnbrew.com",  phone: "555-303-0102" },
  { name: "Brooklyn Bean Company",          address: "47 Bedford Ave",     city: "Brooklyn",      state: "NY", email: "info@brooklynbean.com",    phone: "555-718-0103" },
  { name: "Peach State Coffee Works",       address: "312 Peachtree St",   city: "Atlanta",       state: "GA", email: "supply@peachstatecof.com", phone: "555-404-0104" },
  { name: "Desert Sun Roasters",            address: "900 Cactus Rd",      city: "Phoenix",       state: "AZ", email: "hello@desertsunroast.com", phone: "555-602-0105" },
  { name: "North Star Coffee Traders",      address: "230 Lakeview Dr",    city: "Minneapolis",   state: "MN", email: "trade@northstarcof.com",   phone: "555-612-0106" },
  { name: "Golden Coast Specialty Beans",   address: "1480 Ocean Ave",     city: "Santa Monica",  state: "CA", email: "beans@goldencoast.com",    phone: "555-310-0107" },
  { name: "Lone Star Bean Supply",          address: "777 Armadillo Blvd", city: "Austin",        state: "TX", email: "supply@lonestarbean.com",  phone: "555-512-0108" }
])

s = suppliers.each_with_index.to_h { |sup, i| [i + 1, sup] }

Bean.create!([
  { supplier: s[1], bean_type: "Arabica",  product_name: "Rainier Morning",      price: 18.00, description: "Bright and clean with notes of citrus and honey. Perfect for a smooth morning brew.",         quantity: 1000 },
  { supplier: s[1], bean_type: "Robusta",  product_name: "Harbor Dark",          price: 12.00, description: "Bold and full-bodied with a smoky finish. Great for espresso shots.",                         quantity: 800  },
  { supplier: s[2], bean_type: "Robusta",  product_name: "Summit Grind",         price: 10.00, description: "Earthy and strong. A reliable daily driver for any coffee lover.",                            quantity: 500  },
  { supplier: s[2], bean_type: "Liberica", product_name: "Mile High Reserve",    price: 14.00, description: "Unique floral aroma with a woody, full finish. A real conversation starter.",                 quantity: 600  },
  { supplier: s[3], bean_type: "Excelsa",  product_name: "Bedford Blend",        price: 18.00, description: "Tart and fruity with a deep, wine-like complexity. A Brooklyn original.",                     quantity: 200  },
  { supplier: s[4], bean_type: "Arabica",  product_name: "Sweet Georgia",        price: 11.00, description: "Soft sweetness with a caramel finish. Easy drinking and crowd pleasing.",                     quantity: 900  },
  { supplier: s[4], bean_type: "Robusta",  product_name: "Peachtree Bold",       price: 13.00, description: "Rich and intense. Holds up strong in milk-based drinks.",                                     quantity: 350  },
  { supplier: s[5], bean_type: "Robusta",  product_name: "Sonoran Strength",     price: 16.00, description: "Dark roast with low acidity and a chocolate undertone. Built for the heat.",                  quantity: 700  },
  { supplier: s[5], bean_type: "Liberica", product_name: "Cactus Flower",        price: 15.00, description: "Unusual and aromatic. Light roast that surprises with every sip.",                            quantity: 300  },
  { supplier: s[6], bean_type: "Arabica",  product_name: "Polar Star Single",    price: 13.00, description: "Crisp and balanced with hints of almond and brown sugar. A Midwest favorite.",                quantity: 300  },
  { supplier: s[7], bean_type: "Robusta",  product_name: "Sunset Espresso",      price: 12.00, description: "Smooth and nutty with a long finish. Ideal for lattes and cappuccinos.",                      quantity: 800  },
  { supplier: s[7], bean_type: "Liberica", product_name: "Pacific Reserve",      price: 17.00, description: "Light roast with jasmine notes and a silky mouthfeel. A California classic.",                 quantity: 700  },
  { supplier: s[8], bean_type: "Liberica", product_name: "Lone Star Medium",     price: 10.00, description: "Balanced medium roast with a smooth, nutty body. Great for drip coffee.",                     quantity: 1000 },
  { supplier: s[8], bean_type: "Excelsa",  product_name: "Austin Dark Reserve",  price: 16.00, description: "Deep dark roast with bold flavors. The go-to bean for serious espresso drinkers.",            quantity: 300  }
])

puts "Seeded #{Supplier.count} suppliers and #{Bean.count} beans."