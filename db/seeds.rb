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

url1 = image_path + '/lioncastle.jpg'
drawing1 = Drawing.new(name: 'lion in castle', kid: kid1)
drawing1.remote_image_url = url1
drawing1.save
##############
urlkid2 = 'https://i0.wp.com/orig01.deviantart.net/6e69/f/2012/236/1/1/avatar_aang_by_kirin_48-d5cb7h3.png'
kid2 = Kid.new(first_name: 'Yi Kai', city: 'Shanghai', favourite_thing_list: ['drawings', 'playing with the cooking set', 'color green'], worst_thing_list: [''], description: '', email: 'yikai@gmail.com', age: '5', password: '123123')
kid2.remote_avatar_url = urlkid2
kid2.save

url2 = image_path + '/sunnygarden.jpg'
drawing2 = Drawing.new(name: 'tall man in sunny garden', kid: kid2)
drawing2.remote_image_url = url2
drawing2.save
##############
urlkid3 = 'https://png.pngtree.com/element_pic/16/12/18/c7bde342798e69d52b7341e8a233ec86.jpg'
kid3 = Kid.new(first_name: 'TianHao', city: 'Shanghai', favourite_thing_list: ['lego', 'apples', 'strawberry biscuits'], worst_thing_list: ['nothing'], description: '', email: 'tianhao@gmail.com', age: '6', password: '444444')
kid3.remote_avatar_url = urlkid3
kid3.save

url3 = image_path + '/giraffeandtrees.jpg'
drawing3 = Drawing.new(name: 'Giraffe & Trees', kid: kid3)
drawing3.remote_image_url = url3
drawing3.save
##############
urlkid4 = 'https://www.clipartmax.com/png/middle/68-686733_pikachu-with-hat-drawing-pikachu-wallpaper-hd.png'
kid4 = Kid.new(first_name: 'YiBei', city: 'Shanghai', favourite_thing_list: ['manga', 'singing', 'drawing'], worst_thing_list: ['exams'], description: 'I will go to art school and be an artist when I grow up!', email: 'yibei@gmail.com', age: '13', password: '333333')
kid4.remote_avatar_url = urlkid4
kid4.save

url4 = image_path + '/sweetcupid.jpg'
drawing4 = Drawing.new(name: 'autopotrait', kid: kid4)
drawing4.remote_image_url = url4
drawing4.save


#FAKE kids and drawings
# REAL creator
urlcreator1 = image_path + '/dezio.png'
creator1 = Creator.new(city: 'Shanghai', age: '39', first_name: 'Paul', last_name: 'Dezio', portfolio_url: '', email: 'paul@dezio.com', password: 'aabbcc', description: 'Dezio is a french graffiti artist who has been living in China since 2006. He started his graffiti career in Paris in 1994 and in the past 20 years has left his mark all across Europe, Asia, and North America; gaining global recognition for his own distinct style of lettering and approach to graffiti art, and leading him to be featured in numerous different medias (books, magazines, tv shows, graffiti competitions, movies, websites). He moved to Shanghai in 2007, and is widely regarded as one of the doyen of China’s graffiti scene, earning him the nickname “Lao Du”, influencing local artists all over China and playing host to many of the big international names that have passed through.')
creator1.remote_avatar_url = urlcreator1
creator1.save

#FAKE creators
