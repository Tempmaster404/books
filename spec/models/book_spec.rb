require 'rails_helper'

RSpec.describe Book do
  it 'should be invalid without category' do
    book = Book.new(title: 'Asd', description: "Asd asd asd")
    book.should be_invalid
  end

  it 'should be valid with category' do
    category = Category.create
    book = Book.create(category_id: category.id)
    book.should be_invalid
  end

  it 'should be invalid with incorrect field format' do
    category = Category.create
    book = Book.new(category_id: category.id, title: '', description: "Asd asd")
    book.should be_invalid
  end

  it 'should be valid' do
    category = Category.create(title: "Asd")
    book = Book.new(category_id: category.id, title: 'Asd', description: "Asd asd asd")
    book.should be_valid
  end
end
