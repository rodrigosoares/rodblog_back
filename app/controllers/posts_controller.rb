class PostsController < ApplicationController
  def index
    @posts = Post.published.all
  end

  def show
  end
end
