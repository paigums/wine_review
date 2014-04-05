# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.first_or_create!(name:'Apothic Red', year:2010, winery:'Apothic', country:'USA', varietal:'Cabernet Sauvignon')
Wine.first_or_create!(name:'Drama Queen', year:2011, winery:'Middle Sister', country:'USA', varietal:'Pinot Grigio')
Wine.first_or_create!(name:'Reserve', year:2011, winery:'Goldschmidt Vineyards/Redskins', country:'USA', varietal:'Cabernet Sauvignon')
