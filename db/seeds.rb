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
  address: "Berlin, Germany",
  #active: true,
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
  #active: true,
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
  address: "München, Deustschland",
  active: false,
  votes: 36,
  approved: true,
  image_id: imageId,
)
three.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/400/400")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
four = Issue.new(
  title: "Bicycle parking lot",
  description: "One spot missing for my bike!",
  address: "Berlin, Germany",
  active: false,
  votes: 27,
  approved: true,
  image_id: imageId,
)
four.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/400/400")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
five = Issue.new(
  title: "Soccer goal broken",
  description: "Will sue if my kid does not get drafted by Bayern Munich",
  address: "New York, USA",
  #active: true,
  votes: 12,
  approved: true,
  image_id: imageId,
)
five.save!

imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
six = Issue.new(
  title: "Ugly building",
  description: "Cant you destroy this and build something nice?",
  address: "München, Deustschland",
  #active: true,
  votes: 36,
  approved: false,
  image_id: imageId,
)
six.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/400/400")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
seven = Issue.new(
  title: "Bicycle parking lot",
  description: "One spot missing for my bike!",
  address: "Berlin, Germany",
  #active: true,
  votes: 27,
  approved: false,
  image_id: imageId,
)
seven.save!

one = Cloudinary::Uploader.upload("http://fillmurray.com/400/400")
imageId = one['url'].gsub('http://res.cloudinary.com/loveyourcity/image/upload/','')
eight = Issue.new(
  title: "Soccer goal broken",
  description: "Will sue if my kid does not get drafted by Bayern Munich",
  address: "New York, USA",
  #active: true,
  votes: 12,
  approved: false,
  image_id: imageId,
)
eight.save!
