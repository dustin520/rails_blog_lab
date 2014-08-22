# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




post1 = Post.create({title: "First Post", author: "Dustin", description: "Test post create."})
post2 = Post.create({title: "Rand Post", author: "Randall", description: "I hope this works."})
post3 = Post.create({title: "Last Post", author: "Jerry", description: "Final test, fingers crossed.."})

post1.comments.create({title: "Comment", name: "Joe", description: "Good stuff"})
post2.comments.create({title: "Please", name: "Daniel", description: "Good luck!"})
post3.comments.create({title: "Yes", name: "Lucky", description: "Well done!"})

post1.tags.create({name: "happy"})
post1.tags.create({name: "sad"})
post2.tags.create({name: "funny"})
post2.tags.create({name: "excited"})
post3.tags.create({name: "yay"})
post3.tags.create({name: "boo"})









