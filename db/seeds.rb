# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

one = Cloudinary::Uploader.upload("http://fillmurray.com/200/300")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
one = Issue.new(
  title: "Broken Tree",
  description: "Lost all its apples,
  feel really bad for tree",
  address: "Berlin,
  Germany",
  active: "yes",
  votes: 78,
  approved: true,
  image_id: imageId,
)
one.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/300/300")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
two = Issue.new(
  title: "Toilet on the street",
  description: "And there is shit in it too!",
  address: "Hamburg, Germany",
  active: "yes",
  votes: 44,
  approved: true,
  image_id: imageId,
)
two.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/400/300")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
three = Issue.new(
  title: "Ugly building",
  description: "Cant you destroy this and build something nice?",
  address: "München,
  Deustschland",
  active: "no",
  votes: 36,
  approved: true,
  image_id: imageId,
)
three.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/400/400")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
three = Issue.new(
  title: "Bicycle parking lot",
  description: "One spot missing for my bike!",
  address: "Berlin, Germany",
  active: "no",
  votes: 27,
  approved: true,
  image_id: imageId,
)
three.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/400/400")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
three = Issue.new(
  title: "Soccer goal broken",
  description: "Will sue if my kid does not get drafted by Bayern Munich",
  address: "New York, USA",
  active: "yes",
  votes: 12,
  approved: true,
  image_id: imageId,
)
three.save!
