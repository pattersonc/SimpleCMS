class PostsController < ApplicationController

  def index
    Post.get_all
  end
  
  def show
    Post.get params[:id]
  end
end
