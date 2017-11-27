# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
	["Sophie"],
	["Frank"],
	["Pat"]
]

user_list.each do |user|
	User.create(name: user)
end

dream_list = [
	["Spooky", "This was a really spooky dream!"],
	["Running", "I was running away from something"],
	["Swimming", "I was underwater and it was strange"]
]

dream_list.each do |dream, content|
	Dream.create(name: dream, content: content)
end

analyses_list = [
	["Wow what a weird dream!"],
	["That's interesting. How did you feel about it?"],
	["Super scary! I hope u are feeling ok!!"]
]

analyses_list.each do |text|
	Analysis.create!(text: text)
end