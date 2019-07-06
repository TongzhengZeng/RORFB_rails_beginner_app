# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
	email: 'ztzhltxy@126.com',
	password: '123456',
	password_confirmation: '123456',
	first_name: 'Tongzheng',
	last_name: 'Zeng',
	username: 'ztzhlthjj'
	)
puts user.inspect


user2 = User.create!(
	email: 'ztzhltxy@hotmail.com',
	password: '123456',
	password_confirmation: '123456',
	first_name: 'Tongzheng',
	last_name: 'Zeng',
	username: 'ztzhlth'
	)
puts user2.inspect


50.times do
	post = Post.create!(
		title: Faker::Coffee.blend_name,
		body: Faker::Coffee.notes,
		user_id: rand(1..2)
		)
	puts post.inspect
end

500.times do
	comment = Comment.create!(
		body: Faker::Lorem.paragraph,
		post_id: rand(1..50),
		user_id: rand(1..2)
		)
	puts comment.inspect
end

app_setting = AppSetting.create!(
	theme_name: 'solar',
	tab_name: 'acme_app'
)
puts app_setting.inspect

# rake db:drop db:create db:migrate db:seed