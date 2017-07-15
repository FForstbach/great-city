# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

one = Issue.new(title: "Broken Tree", description: "Lost all its apples, feel really bad for tree", latitude: 13.415467, longitude: 52.519330, finished: yes )
one.photo = URI.parse("http://fillmurray.com/200/300")
one.save!

two = Issue.new(title: "Toilet on the street", description: "And there is shit in it too!", latitude: 13.115467, longitude: 51.519330, finished: yes)
two.photo = URI.parse("http://fillmurray.com/300/300")
two.save!

three = Issue.new(title: "Ugly building", description: "Cant you destroy this and build something nice?", latitude: 13.865467, longitude: 51.909330, finished: no)
three.photo = URI.parse("http://fillmurray.com/400/300")
three.save!

three = Issue.new(title: "Bicycle parking lot", description: "One spot missing for my bike!", latitude: 13.305467, longitude: 51.119330, finished: no)
three.photo = URI.parse("http://fillmurray.com/400/400")
three.save!

three = Issue.new(title: "Soccer goal broken", description: "Will sue if my kid does not get drafted by Bayern Munich", latitude: 13.445467, longitude: 51.999330, finished: yes)
three.photo = URI.parse("http://fillmurray.com/400/400")
three.save!
