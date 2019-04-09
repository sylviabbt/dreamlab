# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeds for drawings
Drawing.delete_all if Rails.env.development?
Kid.delete_all if Rails.env.development?

kid1 = Kid.create!(city: 'Shanghai', favourite_things: 'chocolate', dislikes: 'spinach', description: 'stronger than Superman!', avatar: 'https://banner2.kisspng.com/20180403/pde/kisspng-child-computer-icons-avatar-user-avatar-5ac3a1f1da5b25.5067805715227704178944.jpg', email: 'sammy@superman.com', age: '7', password: '123123')

drawing1 = Drawing.create(status: 'pending', name: 'untitled', image_url: 'https://media.npr.org/assets/img/2014/08/19/child-drawing_custom-1fe8bd0f68eb05c8781bdb2a4d894c8653be0ae0-s1100-c15.jpg', upload_at: 't.strftime("Uploaded on %m/%d/%Y")', booking_at: 't.strftime("Booked on %m/%d/%Y")', kid: kid1)
