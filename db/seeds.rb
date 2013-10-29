# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [{name: 'database dropping'}, {name: 'solo fist bumps'}, {name: 'segmentation fault'}, {name: 'no phase 1'}, {name: 'unfuck computer'}]

categories.each do |category|
  Category.create(category, without_protection: true)
end


posts = [{title: 'brandon sucks', description: 'alot alot alot alot', category_id: Category.all.sample.id}, {title: 'salar sucks', description: 'a little', category_id: Category.all.sample.id}]

posts.each do |post|
  Post.create(post, without_protection: true)
end
