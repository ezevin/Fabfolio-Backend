# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

knit = Project.create(user_id: 1, title: "Knitting", budget: 100, details: Faker::Movies::PrincessBride.quote, finished_image: "http://www.ifabpartners.com/wp-content/uploads/2015/12/IFAB_services_integrated_project_MAIN1.jpg")
sew = Project.create(user_id: 2, title: "Sewing", budget: 100, details: Faker::Movies::PrincessBride.quote, finished_image: "https://3ozxuk3equ8uk744atar6415-wpengine.netdna-ssl.com/wp-content/uploads/2018/02/project-timeline.jpg")
table = Project.create(user_id: 3, title: "Table", budget: 100, details: Faker::Movies::PrincessBride.quote, finished_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUz8VGgqsLHNDpSQ0OIiS1hFh19-50XtU8kwPXmG9QNE2LZDtqWQ")

#Supplies
needles = Supply.create(label: "Needles", price: 5, quantity: 4, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kids-string-card-1524848870.jpg?crop=1.00xw:0.667xh;0,0.0874xh&resize=480:*", place_purchased: "Michael's", description: Faker::TvShows::HowIMetYourMother.quote)
yarn = Supply.create(label: "Yarn", price: 15, quantity: 2, image_url: "https://i.pinimg.com/originals/cd/22/52/cd225281dff67979c53fd5a47670c278.jpg", place_purchased: "JoAnn's", description: Faker::TvShows::HowIMetYourMother.quote)

#Inventory
item1 = Material.create(project_id: 1, supply_id: 1)
