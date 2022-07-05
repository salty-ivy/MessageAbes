# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(username:"test",email:"test@example.com",password:"testing321")
User.create(username:"pandey",email:"pandey@example.com",password:"testing321")
User.create(username:"ojas",email:"ojas@example.com",password:"testing321")
User.create(username:"aditya",email:"aditya@example.com",password:"testing321")
User.create(username:"lakshita",email:"lakshita@example.com",password:"testing321")
User.create(username:"mohit",email:"mohit@example.com",password:"testing321")
User.create(username:"pj",email:"pj@example.com",password:"testing321")
User.create(username:"badal",email:"badal@example.com",password:"testing321")
User.create(username:"daksh",email:"daksh@example.com",password:"testing321")
User.create(username:"harsh",email:"harsh@example.com",password:"testing321")
User.create(username:"anvesh",email:"anvesh@example.com",password:"testing321")
User.create(username:"lisa",email:"lisa@example.com",password:"testing321")
User.create(username:"miyo",email:"miyo@example.com",password:"testing321")
User.create(username:"norman",email:"norman@example.com",password:"testing321")
User.create(username:"aiden",email:"aiden@example.com",password:"testing321")
User.create(username:"jojo",email:"jojo@example.com",password:"testing321")
User.create(username:"justin",email:"justin@example.com",password:"testing321")
User.create(username:"tom",email:"tom@example.com",password:"testing321")
User.create(username:"steve",email:"steve@example.com",password:"testing321")
User.create(username:"messi",email:"messi@example.com",password:"testing321")
User.create(username:"harry",email:"harry@example.com",password:"testing321")
User.create(username:"ash",email:"ash@example.com",password:"testing321")
User.create(username:"mysti",email:"mysti@example.com",password:"testing321")
User.create(username:"mark",email:"mark@example.com",password:"testing321")


## messages #####
user = User.first
user2 = User.find_by(email: "lakshita@example.com")
Message.create(body:"my message",user:user)
Message.create(body:"my 2",user:user)
Message.create(body:"my name is aman pandey guy",user:user)
Message.create(body:"i am the creator",user:user)
Message.create(body:"hi aman",user:user2)
Message.create(body:"it's me laki",user:user2)
Message.create(body:"how you doing",user:user2)
Message.create(body:"you good?",user:user2)


