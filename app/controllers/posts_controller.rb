class PostsController < ApplicationController
  def index
    @posts = Post.published.all
  end

  def show
    @post = Post.friendly.find params[:id]
  end
end
