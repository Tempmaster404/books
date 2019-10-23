class AddBooksIdToCover < ActiveRecord::Migration[5.1]
  def change
    add_reference :covers, :book, index: true
  end
end
