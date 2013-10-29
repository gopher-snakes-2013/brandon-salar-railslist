class PostsController < ApplicationController
  def index
    # @post = Post.where(category_id: params[:category_id])
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.category_id = params[:category]
    @post.description = params[:post][:description]
    @post.save
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end



end