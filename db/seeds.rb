# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

Request.destroy_all
User.destroy_all

url = "https://www.eurosport.fr/tennis/atp/standing.shtml"

classement = ["NC", "40", "30/5", "30/4", "30/3", "30/2", "30/1", "30", "15/5", "15/4", "15/3", "15/2", "15/1", "15", "5/6", "4/6", "3/6", "2/6", "1/6", "0", "-2/6", "-4/6", "-15", "-30"]

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)
result = []
# photo = search('.player img')[0].attributes["data-isg-lazy"].value
# country = search('.country img')[0].attributes["title"].value

html_doc.search('.standing-table__player-link')[0..10].each do |element|
  result << [element.search('.text').children.text, element.search('.player img')[0].attributes["data-isg-lazy"].value, element.search('.country img')[0].attributes["title"].value ]
end

result.each do |player|
  User.create!(first_name: player[0], photo: player[1], address: player[2], gender: "Men", email: "#{player[0].downcase.gsub(" ", "_")}@gmail.com", password: "secret", level: classement.shuffle.first)
end

req1 = Request.new

req1.user = User.first
date = Date.new(2020, 6, 27)
req1.date = date
req1.time = "20"
req1.location = "Paris"
req1.save

req2 = Request.new

req2.user = User.first
date = Date.new(2020, 6, 30)
req2.date = date
req2.time = "10"
req2.location = "London"
req2.save
