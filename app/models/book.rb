class Book < ApplicationRecord 
  has_and_belongs_to_many :authors
  belongs_to :category
  has_one :cover
  accepts_nested_attributes_for :cover, allow_destroy: true
  accepts_nested_attributes_for :authors, allow_destroy: true
end
  