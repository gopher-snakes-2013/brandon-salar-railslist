class PostsController < ApplicationController
  def index
    @posts = Post.where(category_id: params[:category_id])
  end
end