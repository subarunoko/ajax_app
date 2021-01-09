class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  
  def create
    #Post.create(content: params[:content])

    #下の表記でも可
    post = Post.new(content: params[:content])
    post.save
  end

end