require 'rails_helper'

RSpec.describe Category do
  it 'should be invalid without title' do
    category = Category.new
    category.should be_invalid
  end

  it 'should be valid with title' do
    category = Category.new(title: 'asd')
    category.should be_valid
  end
end
