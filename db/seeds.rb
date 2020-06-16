# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

url = "https://www.eurosport.fr/tennis/atp/standing.shtml"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)
result = []
# photo = search('.player img')[0].attributes["data-isg-lazy"].value
# country = search('.country img')[0].attributes["title"].value

html_doc.search('.standing-table__player-link')[0..5].each do |element|
  result << [element.search('.text').children.text, element.search('.player img')[0].attributes["data-isg-lazy"].value, element.search('.country img')[0].attributes["title"].value ]
end

p result
