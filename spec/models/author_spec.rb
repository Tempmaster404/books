require 'rails_helper'

RSpec.describe Cover do
  it 'should create relation with books' do
    category = Category.create(title: "Asd")
    book = Book.create(category_id: category.id, title: 'Asd', description: "Asd asd asd")
    author = Author.create(name: "Asd")
    author.books << book
    author_book = author.books.last

    author_book.should eq(book)
  end
 
  it 'should be invalid with incorrect field format' do
    author = Author.new

    author.should be_invalid
  end
end  
