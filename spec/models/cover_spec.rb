require 'rails_helper'

RSpec.describe Cover do
  it 'should be invalid without book' do
    cover = Cover.new
    cover.should be_invalid
  end

  it 'should be valid with book' do
    category = Category.create(title: "Asd")
    book = Book.create(category_id: category.id, title: 'Asd', description: "Asd asd asd")
    cover = Cover.new(book_id: book.id)
    cover.should be_valid
  end
end
