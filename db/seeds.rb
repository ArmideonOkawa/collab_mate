# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jeremy = User.create(email: "jeremy.m.perry@gmail.com", username: "armideonokawa", password: "abc123")

category = Category.create(name: "Technology")


project1 = Project.create(user_id: jeremy.id, 
                          category_id: category.id, 
                          name: "Some Project",
                          description: "This project which doesnt have a name field, is a production based app built in js, with a Ruby backend",
                          complete: "false")