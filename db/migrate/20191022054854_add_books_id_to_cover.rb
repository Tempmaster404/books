class AddBooksIdToCover < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :cover, index: true
  end
end
