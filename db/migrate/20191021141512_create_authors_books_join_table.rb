class CreateAuthorsBooksJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :books, :authors do |t|
      t.index :author
      t.index :books
    end
  end
end
