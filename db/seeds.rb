# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Category.destroy_all

7.times do |obj|
  Category.create(title: Faker::Book.genre)
end

Author.destroy_all

15.times do |obj|
  Author.create(name: Faker::Book.author)
end

Book.destroy_all
Cover.destroy_all
  
30.times do |obj|
  book = Book.new(title: Faker::Book.title)
  book.description = Faker::Lorem.paragraph(
    sentence_count: 2, supplemental: false, random_sentences_to_add: 4
  )

  offset_author = rand(Author.count)
  rand_author = Author.offset(offset_author).first
  book.authors << rand_author
 
  offset_category = rand(Category.count)
  rand_category = Category.offset(offset_category).first
  book.category_id = rand_category.id
  
  book.save
  book.create_cover(image: File.open(File.join(Rails.root, 'app/assets/images/book.jpeg')))
end

