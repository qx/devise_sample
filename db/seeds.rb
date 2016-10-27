# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5000.times do
  post = Post.new(:title => Faker::Name.title ,:content =>Faker::Lorem.paragraph)
  post.save
  # Post.last.delete
end

3.times do
  Post.order(:id => "ASC").limit(20).each do |post|
    post.comments.new(title: Faker::Name.title,author: Faker::Name.name)
    post.save
  end
end
