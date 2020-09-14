# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jeremy = User.create(email: "jeremy.m.perry@gmail.com", username: "armideonokawa", password: "abc123")
diana = User.create(email: "fullstackmiguel@gmail.com", username: "deedee", password: "abc123")

categories = [
    "Technology",
    "Educational",
    "Business",
    "Hobby",
    "Gaming"
]

categories.each do |name| 
    Category.create(name: name)
end





project1 = Project.create(user_id: jeremy.id, 
                          category_id: 1, 
                          name: "Some Project",
                          description: "This project which doesnt have a name field, is a production based app built in js, with a Ruby backend")

project2 = Project.create(user_id: diana.id, 
                          category_id: 1, 
                          name: "Almost there",
                          description: "This project which doesnt have a name field, is a production based app built in js, with a Ruby backend")

project3 = Project.create(user_id: jeremy.id, 
                          category_id: 1, 
                          name: "Second to last",
                          description: "This project which doesnt have a name field, is a production based app built in js, with a Ruby backend")

project4 = Project.create(user_id: diana.id, 
                          category_id: 1, 
                          name: "Last One",
                          description: "This project which doesnt have a name field, is a production based app built in js, with a Ruby backend")