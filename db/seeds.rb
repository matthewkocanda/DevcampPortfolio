User.create!(
  email: "matthewkocanda@gmail.com",
  name: "Admin",
  password: "6151990MRK",
  password_confirmation: "6151990MRK",
  roles: "site_admin"
  )
puts "1 Admin user created"

User.create!(
  email: "test@test.com",
  name: "Regular User",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  )
puts "1 regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
    )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Service offered",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      main_image:  "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio items created"

3.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
  )
end

puts "3 technologies created"
