# frozen_string_literal: false

describe 'Category' do
  it 'has a name' do
    category = Category.new
    category.name = 'Fiction'
    expect(category.name).to eq('Fiction')
  end
end
