ActiveAdmin.register Book do
  permit_params :title,
  :description,
  cover_attributes: [:id, :image, :_destroy],
  authors_attributes: [:id, :name, :_destroy]

  form do |f|
    f.inputs "Book" do
      f.input :title
      f.input :description
    end
    f.inputs "Cover" do
      f.has_many :cover, allow_destroy: true, new_record: true do |cover|
        cover.input :image, as: :file
      end          
    end
    f.inputs "Author" do
      f.has_many :authors, allow_destroy: true, new_record: true do |author|
        author.input :name
      end          
    end
    f.actions
  end
end
