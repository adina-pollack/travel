# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'httparty'

Location.destroy_all
User.destroy_all

response = HTTParty.get('https://restcountries.eu/rest/v1/all')
location_data = JSON.parse(response.body)
locations = location_data.map do |event|
  c = Location.create!(country: event['name'])

end

User.create([
  {first_name: "Adina", last_name: "Pollack", username: "pollacaf", email: "adinap16@gmail.com", password: "adina"}
