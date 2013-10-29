class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    category_id = params[:id]
    @category_name = Category.where(id: category_id).first.name
    @posts= Post.where(category_id: category_id)
  end

end
