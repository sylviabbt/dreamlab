# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeds
Collaboration.delete_all if Rails.env.development?
Drawing.delete_all if Rails.env.development?
Creator.delete_all if Rails.env.development?
Kid.delete_all if Rails.env.development?

Ethan = Kid.create!(first_name: 'Ethan', city: 'Shanghai', favourite_things: 'chocolate, pizza', dislikes: 'spinach', description: 'stronger than Superman!', avatar: 'https://www.shareicon.net/data/128x128/2016/06/25/786536_people_512x512.png', email: 'ethan@gmail.com', age: '8', password: '123123')

drawing1 = Drawing.create!(name: 'untitled55', image: '/assets/images/drawing1.png', kid: Ethan)

Sammy = Kid.create!(first_name: 'Sammy', city: 'Shanghai', favourite_things: 'ice cream', dislikes: 'injections', description: '', avatar: 'https://image.flaticon.com/icons/svg/1718/1718044.svg', email: 'sammy@gmail.com', age: '7', password: '111111')

Leo = Kid.create!(first_name: 'Leo', city: 'Shanghai', favourite_things: 'french fries, pasta', dislikes: 'thunder, brussel sprouts', description: '', avatar: 'https://image.flaticon.com/icons/svg/163/163801.svg', email: 'leo@gmail.com', age: '5', password: '444444')

drawing2 = Drawing.create!(name: 'untitled', image: '/assets/images/drawing2.png', kid: Leo)
drawing3 = Drawing.create!(name: 'untitled', image: '/assets/images/drawing3.png', kid: Leo)

Lily = Kid.create!(first_name: 'Lily', city: 'Shanghai', favourite_things: 'cotton candy, balloons', dislikes: 'snakes, crabs', description: 'I like unicorns the most!', avatar: 'https://image.flaticon.com/icons/svg/1624/1624482.svg', email: 'lily@gmail.com', age: '6', password: '333333')

drawing4 = Drawing.create!(name: 'untitled', image: '/assets/images/drawing4.png', kid: Lily)

Enzo = Kid.create!(first_name: 'Enzo', city: 'Shanghai', favourite_things: 'puppies, elephants, all animals', dislikes: 'cockroaches', description: 'when I grow up I want to be a doctor', avatar: 'https://image.flaticon.com/icons/svg/163/163823.svg', email: 'enzo@gmail.com', age: '6', password: '222222')


Helena = Creator.create!(city: 'Berlin', avatar: 'https://image.flaticon.com/icons/svg/702/702014.svg', age: '37', first_name: 'Helena', last_name: 'Schmidt', portfolio_url: 'www.helenaschmidt.com', email: 'helena@helenaschmidt.com', password: 'abcdef')

# collab1 = Collaboration.create(image_url: '/assets/images/collab1.png', drawing: drawing1, creator_id: 1)
# collab2 = Collaboration.create(image_url: '/assets/images/collab2.png', drawing: drawing2, creator_id: 1)

Paulo = Creator.create!(city: 'Sao Paulo', avatar: 'https://image.flaticon.com/icons/svg/145/145842.svg', age: '66', first_name: 'Paulo', last_name: 'Moreira', portfolio_url: 'www.pmoreira.com.br', email: 'paulo@pmoreira.com', password: 'aabbcc')

# collab3 = Collaboration.create(image_url: '/assets/images/collab3.png', drawing: drawing3, creator_id: 2)

Lola = Creator.create!(city: 'Cape Town', avatar: 'https://image.flaticon.com/icons/svg/1597/1597166.svg', age: '23', first_name: 'Lola', last_name: 'Manger', portfolio_url: 'www.lolacreates.co.za', email: 'lola@lolacreate.com', password: 'a1b2c3')

# collab4 = Collaboration.create(image_url: '/assets/images/collab4.png', drawing: drawing1, creator_id: 3)
