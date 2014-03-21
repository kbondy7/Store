# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Size.destroy_all
Size.create([{title:"S"},{title:"M"},{title:"L"}])
Color.destroy_all
Color.create([{title:"Blue"},{title:"White"},{title:"Black"}])