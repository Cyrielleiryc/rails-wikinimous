# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating articles...'
10.times do
  a = Article.new(title: Faker::Movie.title, content: Faker::Quote.famous_last_words)
  a.save if a.valid?
end
puts 'Finished!'
