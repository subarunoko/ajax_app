class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @posts = Post.all.order(id: "DESC")
  end

  # def new
  # end

  
  def create
    # Post.create(content: params[:content])
    post = Post.create(content: params[:content], checked: false)
    # redirect_to action: :index
    render json:{ post: post} 

    #下の表記でも可
    # post = Post.new(content: params[:content])
    # post.save
  end

  def checked
    # binding.pry
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end

end