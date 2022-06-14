# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Garden.destroy_all
User.destroy_all


user1= User.create!(last_name: "lolo", first_name: "david", address: "32 av  ggggg", email: "jjj@live.fr", password: "azerty")
p "user create"
garden1= Garden.create!(name: "Fleur", address: "maier 5, nice", user_id: user1.id)
p "garden create"
review1= Review.create!(rating: "2", comment: "bon", user_id: user1.id, garden_id: garden1.id)
p "review create"
