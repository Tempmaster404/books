ActiveAdmin.register Author do
  show do
    attributes_table do
      row :name
    end
    panel "Books" do
      table_for author.books do
        column :title
        column :description
      end
    end
    active_admin_comments
  end
end
