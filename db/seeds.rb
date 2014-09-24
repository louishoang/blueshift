# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "hah3", profile_photo: "string_url_of_photo")
Review.create

Genre.create!(name: "Comedy")

Show.create!(name: "Big Bang Theory", description: "A story about nerds", genre_id: 1, running_dates: "Sep 2006 - Current")

