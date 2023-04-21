# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

messages_1 = User.create(name:'Remmy',email: 'remmyben@gmail.com')

messages_1.messages.create(account_id: 'Remmy123', message:'Congratulations, your transaction is successful.',name:'Remmy')

