ActiveAdmin.register Category do
    permit_params :title,
    books_attributes: [:id, :title, :description, :_destroy]
    form do |f|
      f.inputs "Category" do
        f.input :title
      end
      f.inputs do
        f.has_many :books, allow_destroy: true, new_record: true do |book|
          book.input :title
          book.input :description 
        end          
      end
      f.actions
    end
end
