# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tank.create(name: "tank 1", capacity_min: 100, capacity_max: 200)
Tank.create(name: "tank 2", capacity_min: 500, capacity_max: 2000)
Tank.create(name: "tank 3", capacity_min: 600, capacity_max: 800)
Tank.create(name: "tank 4", capacity_min: 1000, capacity_max: 2000)
Tank.create(name: "tank 5", capacity_min: 100, capacity_max: 200)
