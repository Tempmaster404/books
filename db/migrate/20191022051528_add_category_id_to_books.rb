class AddCategoryIdToBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :category, index: true
  end
end
