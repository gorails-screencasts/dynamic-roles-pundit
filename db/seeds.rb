# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.find_or_create_by!(name: "reviewer") do |r|
  r.read_posts = true
end

Role.find_or_create_by!(name: "writer") do |r|
  r.create_posts = true
  r.read_posts = true
  r.update_posts = true
  r.delete_posts = true
end

Role.find_or_create_by!(name: "editor") do |r|
  r.read_posts = true
  r.update_posts = true
end
