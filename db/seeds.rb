# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created!"

# Blog Seed
10.times do |blog|
  Blog.create!(
    title:"My blog Post #{blog}", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula eros leo, ut pretium sapien ornare non. Sed ut tincidunt ante, vitae tempor erat. Donec efficitur purus lorem, at consequat diam iaculis nec. Morbi non est vel eros faucibus ultrices. Maecenas quis metus sit amet leo consequat finibus. Pellentesque vel justo eu magna rhoncus sagittis in id lorem. Etiam iaculis augue nunc, sed tincidunt lacus euismod vitae. Quisque ut lacinia odio. Suspendisse iaculis ac nisl ut aliquet. Quisque interdum nulla at dictum interdum. Maecenas lacinia in dolor semper iaculis. Nullam eu enim lorem. Integer blandit sem in orci rhoncus, a congue turpis facilisis. In lobortis aliquet mi vitae imperdiet.",
    topic_id: Topic.last.id
  )
end

puts "10 blogs created!"

# Skills Seed
5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: rand(1..10)
  )
end

puts "5 skills created!"

# Portfolio seed
8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Item #{portfolio_item}",
    subtitle: "Ruby on rails",
    body: "Nunc aliquet enim justo, ac luctus eros tempor accumsan. Maecenas consequat vehicula condimentum. Nulla mattis eros et malesuada tincidunt. Aliquam at mauris nec est porttitor pellentesque. Maecenas hendrerit vitae tellus sed cursus. Mauris in bibendum urna. Donec in tempor nisi, semper semper odio. Sed id orci magna.",
    main_image: "https://via.placeholder.com/600x200",
    thumb_image: "https://via.placeholder.com/350x200",
  )
end

puts "8 portfolio Ruby created!"


1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Item #{portfolio_item}",
    subtitle: "Angular",
    body: "Nunc aliquet enim justo, ac luctus eros tempor accumsan. Maecenas consequat vehicula condimentum. Nulla mattis eros et malesuada tincidunt. Aliquam at mauris nec est porttitor pellentesque. Maecenas hendrerit vitae tellus sed cursus. Mauris in bibendum urna. Donec in tempor nisi, semper semper odio. Sed id orci magna.",
    main_image: "https://via.placeholder.com/600x200",
    thumb_image: "https://via.placeholder.com/350x200",
  )
end
puts "1 portfolio Angular created!"

3.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
  )
end

puts "3 technologies created!"
