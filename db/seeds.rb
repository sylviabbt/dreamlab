# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# dreamCo lab seeds
image_path = File.join(Rails.root,'app','assets','images')

#kill the children first
Collaboration.delete_all if Rails.env.development?
Drawing.delete_all if Rails.env.development?
Creator.delete_all if Rails.env.development?
Kid.delete_all if Rails.env.development?

#kids and drawings
urlkid1 = 'https://www.shareicon.net/data/128x128/2016/06/25/786536_people_512x512.png'
kid1 = Kid.new(first_name: 'Ethan', city: 'Shanghai', favourite_things: ['chocolate', 'pizza'], dislikes: ['spinach'], description: 'stronger than Superman!', email: 'ethan@gmail.com', age: '8', password: '123123')
kid1.remote_avatar_url = urlkid1
kid1.save

url1 = image_path + '/drawing1.png'
drawing1 = Drawing.new(name: 'my first drawing', kid: kid1)
drawing1.remote_image_url = url1
drawing1.save

urlkid2 = 'https://image.flaticon.com/icons/svg/1718/1718044.svg'
kid2 = Kid.new(first_name: 'Sammy', city: 'Shanghai', favourite_things: ['ice cream'], dislikes: ['injections'], description: '', email: 'sammy@gmail.com', age: '7', password: '111111')
kid2.remote_avatar_url = urlkid2
kid2.save

urlkid3 = 'https://image.flaticon.com/icons/svg/163/163801.svg'
kid3 = Kid.new(first_name: 'Leo', city: 'Shanghai', favourite_things: ['french fries', 'pasta'], dislikes: ['thunder', 'brussel sprouts'], description: '', email: 'leo@gmail.com', age: '5', password: '444444')
kid3.remote_avatar_url = urlkid3
kid3.save

url2 = image_path + '/drawing2.png'
drawing2 = Drawing.new(name: 'my first drawing', kid: kid3)
drawing2.remote_image_url = url2
drawing2.save
url3 = image_path + '/drawing3.png'
drawing3 = Drawing.new(name: 'my second drawing', kid: kid3)
drawing3.remote_image_url = url3
drawing3.save

urlkid4 = 'https://image.flaticon.com/icons/svg/1624/1624482.svg'
kid4 = Kid.new(first_name: 'Lily', city: 'Shanghai', favourite_things: ['cotton candy', 'balloons'], dislikes: ['snakes', 'crabs'], description: 'I like unicorns the most!', email: 'lily@gmail.com', age: '6', password: '333333')
kid4.remote_avatar_url = urlkid4
kid4.save

url4 = image_path + '/drawing4.png'
drawing4 = Drawing.new(name: 'my first drawing', kid: kid4)
drawing4.remote_image_url = url4
drawing4.save

urlkid5 = 'https://image.flaticon.com/icons/svg/163/163823.svg'
kid5 = Kid.new(first_name: 'Enzo', city: 'Shanghai', favourite_things: ['puppies', 'elephants', 'all animals'], dislikes: ['cockroaches'], description: 'when I grow up I want to be a doctor', email: 'enzo@gmail.com', age: '6', password: '222222')
kid5.remote_avatar_url = urlkid5
kid5.save

#creators and collabs
urlcreator1 = 'https://image.flaticon.com/icons/svg/702/702014.svg'
creator1 = Creator.new(city: 'Berlin',  age: '37', first_name: 'Helena', last_name: 'Schmidt', portfolio_url: 'www.helenaschmidt.com', email: 'helena@helenaschmidt.com', password: 'abcdef', description: 'What do I want to say with my art? Celebrate the human, the marks people make on the world. Treasure the local, the small-scale, the eccentric, the ordinary: whatever is made out of caring. Respect what people have built for themselves')
creator1.remote_avatar_url = urlcreator1
creator1.save

# collab1 = Collaboration.create(image_url: '/assets/images/collab1.png', drawing: drawing1, creator_id: 1)
# collab2 = Collaboration.create(image_url: '/assets/images/collab2.png', drawing: drawing2, creator_id: 1)

urlcreator2 = 'https://image.flaticon.com/icons/svg/145/145842.svg'
creator2 = Creator.new(city: 'Sao Paulo', age: '66', first_name: 'Paulo', last_name: 'Moreira', portfolio_url: 'www.pmoreira.com.br', email: 'paulo@pmoreira.com', password: 'aabbcc', description: 'Getting outside is good for the soul. Through my artwork, I try to bring the outside in. While I make no attempt to portray actual plants or animals, I do want my creations to look like they could have lived or grown somewhere. Living with beautiful objects that pay tribute to the natural world reminds us to slow down and helps us reconnect with nature.')
creator2.remote_avatar_url = urlcreator2
creator2.save

# collab3 = Collaboration.create(image_url: '/assets/images/collab3.png', drawing: drawing3, creator_id: 2)

urlcreator3 = 'https://image.flaticon.com/icons/svg/1597/1597166.svg'
creator3 = Creator.new(city: 'Cape Town', age: '23', first_name: 'Lola', last_name: 'Manger', portfolio_url: 'www.lolacreates.co.za', email: 'lola@lolacreate.com', password: 'a1b2c3', description: 'Capturing the light is everything! As a plein air painter, it is always the light that I remember most about any location. It is my inspiration. Its elusive quality can transform a figure or a landscape in just a matter of seconds. I strive to convey that sense of place by capturing its fleeting magic.')
creator3.remote_avatar_url = urlcreator3
creator3.save

# collab4 = Collaboration.create(image_url: '/assets/images/collab4.png', drawing: drawing1, creator_id: 3)
