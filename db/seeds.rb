# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
Shelter.destroy_all
Application.destroy_all

adopt_dont_shop = Shelter.create!(name: "Adopt Don't Shop", address: "1234 Adoption Lane", city: "Denver", state:"CO", zip: 12345)
pet_city = Shelter.create!(name: "Pet City", address: "2234 Pets Drive", city: "Pet City", state:"TX", zip: 55555)

fido = adopt_dont_shop.pets.create!(name: "Fido", approximate_age: 5, description: "highland terrier", adoptable: true, sex: 1)
spark = pet_city.pets.create!(name: "Spark", approximate_age: 2, description: "corgi", adoptable: true, sex: 0)

john = Application.create!(name: "John Doe", address: "8998 Comfy Lane", city: "Denver", state: "CO", zip: 12345, description: "Comfort Zone", status: 0)
jane = Application.create!(name: "Jane Doe", address: "6606 Noncomfy road", city: "Pet City", state: "TX", zip: 55556, description: "Non Comfort Zone", status: 1)
