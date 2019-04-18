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

#REAL kids and drawings
urlkid1 = 'https://images.vexels.com/media/users/3/128175/isolated/preview/626b073e740b18d826291258d98b4e90-lion-cartoon-circle-icon-by-vexels.png'
kid1 = Kid.new(first_name: 'Jia Jun', city: 'Shanghai', favourite_thing_list: ['lions and tigers and ultman (奥特曼), chicken leg, hide and seek'], worst_thing_list: ['onions'], description: '', email: 'jiajun@gmail.com', age: '4', password: '111111')
kid1.remote_avatar_url = urlkid1
kid1.save

url1 = image_path + '/kid2-lion-in-my-castle.jpg'
drawing1 = Drawing.new(name: 'lion in castle', kid: kid1)
drawing1.remote_image_url = url1
drawing1.save
##############
urlkid2 = 'https://i0.wp.com/orig01.deviantart.net/6e69/f/2012/236/1/1/avatar_aang_by_kirin_48-d5cb7h3.png'
kid2 = Kid.new(first_name: 'Yi Kai', city: 'Shanghai', favourite_thing_list: ['drawings', 'playing with the cooking set', 'color green'], worst_thing_list: [''], description: '', email: 'yikai@gmail.com', age: '5', password: '123123')
kid2.remote_avatar_url = urlkid2
kid2.save

url2 = image_path + '/kid1-tall-man-in-sunny-garden.jpg'
drawing2 = Drawing.new(name: 'tall man in sunny garden', kid: kid2)
drawing2.remote_image_url = url2
drawing2.save
##############
urlkid3 = 'https://png.pngtree.com/element_pic/16/12/18/c7bde342798e69d52b7341e8a233ec86.jpg'
kid3 = Kid.new(first_name: 'TianHao', city: 'Shanghai', favourite_thing_list: ['lego', 'apples', 'strawberry biscuits'], worst_thing_list: ['nothing'], description: '', email: 'tianhao@gmail.com', age: '6', password: '444444')
kid3.remote_avatar_url = urlkid3
kid3.save

url3 = image_path + '/kid3-the-giraffe-and-the-apple-tree.png'
drawing3 = Drawing.new(name: 'Giraffe & Trees', kid: kid3)
drawing3.remote_image_url = url3
drawing3.save
##############
urlkid4 = 'https://www.clipartmax.com/png/middle/68-686733_pikachu-with-hat-drawing-pikachu-wallpaper-hd.png'
kid4 = Kid.new(first_name: 'YiBei', city: 'Shanghai', favourite_thing_list: ['manga', 'singing', 'drawing'], worst_thing_list: ['exams'], description: 'I will go to art school and be an artist when I grow up!', email: 'yibei@gmail.com', age: '13', password: '333333')
kid4.remote_avatar_url = urlkid4
kid4.save

url4 = image_path + '/kid4-autoportrait.jpg'
drawing4 = Drawing.new(name: 'autopotrait', kid: kid4)
drawing4.remote_image_url = url4
drawing4.save


#FAKE kids and drawings
urlkid5 = 'https://www.shareicon.net/data/128x128/2016/06/25/786536_people_512x512.png'
kid5 = Kid.new(first_name: 'Ethan', city: 'Shanghai', favourite_thing_list: ['chocolate', 'pizza'], worst_thing_list: ['spinach'], description: 'stronger than Superman!', email: 'ethan@gmail.com', age: '8', password: '123123')
kid5.remote_avatar_url = urlkid5
kid5.save

url5 = image_path + '/drawing1.png'
drawing5 = Drawing.new(name: 'sunny day at the park', kid: kid5)
drawing5.remote_image_url = url5
drawing5.save
##############
urlkid6 = 'https://image.flaticon.com/icons/svg/1718/1718044.svg'
kid6 = Kid.new(first_name: 'Sammy', city: 'Shanghai', favourite_thing_list: ['ice cream'], worst_thing_list: ['injections'], description: '', email: 'sammy@gmail.com', age: '7', password: '111111')
kid6.remote_avatar_url = urlkid6
kid6.save
##############
urlkid7 = 'https://image.flaticon.com/icons/svg/163/163801.svg'
kid7 = Kid.new(first_name: 'Leo', city: 'Shanghai', favourite_thing_list: ['french fries', 'pasta'], worst_thing_list: ['thunder', 'brussel sprouts'], description: '', email: 'leo@gmail.com', age: '5', password: '444444')
kid7.remote_avatar_url = urlkid7
kid7.save

url6 = image_path + '/drawing2.png'
drawing6 = Drawing.new(name: 'giant robot', kid: kid7)
drawing6.remote_image_url = url6
drawing6.save

url7 = image_path + '/drawing3.png'
drawing7 = Drawing.new(name: 'girl hero', kid: kid7)
drawing7.remote_image_url = url7
drawing7.save
##############
urlkid8 = 'https://image.flaticon.com/icons/svg/1624/1624482.svg'
kid8 = Kid.new(first_name: 'Lily', city: 'Shanghai', favourite_thing_list: ['cotton candy', 'balloons'], worst_thing_list: ['snakes', 'crabs'], description: 'I like unicorns the most!', email: 'lily@gmail.com', age: '6', password: '333333')
kid8.remote_avatar_url = urlkid8
kid8.save

url8 = image_path + '/drawing4.png'
drawing8 = Drawing.new(name: 'my first drawing', kid: kid8)
drawing8.remote_image_url = url8
drawing8.save
##############
urlkid9 = 'https://image.flaticon.com/icons/svg/163/163823.svg'
kid9 = Kid.new(first_name: 'Enzo', city: 'Shanghai', favourite_thing_list: ['puppies', 'elephants', 'all animals'], worst_thing_list: ['cockroaches'], description: 'when I grow up I want to be a doctor', email: 'enzo@gmail.com', age: '6', password: '222222')
kid9.remote_avatar_url = urlkid9
kid9.save


# REAL creator
urlcreator1 = image_path + '/dezio.jpg'
creator1 = Creator.new(city: 'Shanghai', age: '39', first_name: 'Paul', last_name: 'Dezio', portfolio_url: '', email: 'paul@dezio.com', password: 'aabbcc', description: 'Dezio is a french graffiti artist who has been living in China since 2006. He started his graffiti career in Paris in 1994 and in the past 20 years has left his mark all across Europe, Asia, and North America; gaining global recognition for his own distinct style of lettering and approach to graffiti art, and leading him to be featured in numerous different medias (books, magazines, tv shows, graffiti competitions, movies, websites). He moved to Shanghai in 2007, and is widely regarded as one of the doyen of China’s graffiti scene, earning him the nickname “Lao Du”, influencing local artists all over China and playing host to many of the big international names that have passed through.')
creator1.remote_avatar_url = urlcreator1
creator1.save

#FAKE creators
urlcreator2 = image_path + '/helenapic.png'
creator2 = Creator.new(city: 'Berlin',  age: '37', first_name: 'Helena', last_name: 'Schmidt', portfolio_url: 'www.helenaschmidt.com', email: 'helena@helenaschmidt.com', password: 'abcdef', description: 'What do I want to say with my art? Celebrate the human, the marks people make on the world. Treasure the local, the small-scale, the eccentric, the ordinary: whatever is made out of caring. Respect what people have built for themselves')
creator2.remote_avatar_url = urlcreator2
creator2.save
##############

urlcreator3 = 'https://rwwcomplaw.com/wp-content/uploads/2015/01/Lam-Vincci-Square-Crop-low-res.jpg'
creator3 = Creator.new(city: 'Cape Town', age: '23', first_name: 'Lola', last_name: 'Chan', portfolio_url: 'www.lolacreates.co.za', email: 'lola@lolacreate.com', password: 'a1b2c3', description: 'Capturing the light is everything! As a plein air painter, it is always the light that I remember most about any location. It is my inspiration. Its elusive quality can transform a figure or a landscape in just a matter of seconds. I strive to convey that sense of place by capturing its fleeting magic.')
creator3.remote_avatar_url = urlcreator3
creator3.save
