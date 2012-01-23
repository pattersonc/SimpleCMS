class PostsController < ApplicationController

  def index
    @posts = Post.get_all
  end
  
  def show
    @post = Post.get params[:id]
    raise ActionController::RoutingError.new('Not Found') if @post.nil?
    @title = @post.title 
  end
end
