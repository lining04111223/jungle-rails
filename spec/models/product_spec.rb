require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'a product with all 4 fields should be valid' do
      @category = Category.create(name: "Fruit")
      @product = Product.create(name: "Apple", price_cents: 6, quantity: 100, category: @category)
      expect(@product.valid?).to be true
    end

    it 'name should be invalid' do
      @category = Category.create(name: "Fruit")    
      @product = Product.create(name: nil, price_cents: 6, quantity: 100, category: @category)
      expect(@product.errors[:name]).to include("can\'t be blank")
    end
    it 'price should be invalid' do
      @category = Category.create(name: "Fruit")    
      @product = Product.create(name: 'Apple', price_cents: nil, quantity: 100, category: @category)
      expect(@product.errors[:price]).to include("can\'t be blank")
    end
    it 'quantity should be invalid' do
      @category = Category.create(name: "Fruit")    
      @product = Product.create(name: 'Apple', price_cents: 6, quantity: nil, category: @category)
      expect(@product.errors[:quantity]).to include("can\'t be blank")
    end
    it 'category should be invalid' do
      @category = nil  
      expect(@category).to be_nil
    end
  end
end
