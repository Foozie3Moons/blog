# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all

(1..20).each do |i|
  User.create!(email: "matthew.bell.#{i}@email.com", password: "password", name: "Matt ##{i}")
end
(1..100).each do |i|
  users = User.all
  Post.create!(title: "Lipsum Post #{i}", body: %{
      Nullam hendrerit iaculis sodales. Curabitur varius nibh arcu, id molestie nibh fermentum vitae. Cras quis semper dui. Cras porttitor urna sit amet risus vehicula tempor. Maecenas quis tempor ligula. Donec et nibh eu leo volutpat placerat. Fusce vulputate elit in nisi pretium, vel fermentum mi fermentum. Mauris scelerisque, lectus non luctus ultricies, urna eros tincidunt risus, at varius sapien diam id erat.
  }, user: users[rand(20).ceil])
end
