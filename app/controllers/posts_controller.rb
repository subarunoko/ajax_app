class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @posts = Post.all.order(id: "DESC")
  end

  # def new
  # end

  
  def create
    Post.create(content: params[:content])
    redirect_to action :index
    
    #下の表記でも可
    # post = Post.new(content: params[:content])
    # post.save
  end

end