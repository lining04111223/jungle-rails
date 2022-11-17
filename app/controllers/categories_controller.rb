class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    #raise @category.inspect #for deburg
    @products = @category.products.order(created_at: :desc)
  end

end
