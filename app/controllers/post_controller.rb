class PostController < ApplicationController
	protect_from_forgery with: :exception

  def index
  	@posts = Post.all
  end
  def new
  	@posts = Post.new
  end
  def create
  	newpost = Post.new
  	newpost.title = params[:post][:title]
  	newpost.content = params[:post][:content]
  	newpost.save

  	redirect_to '/'
  end

  def show
  	@thispost = Post.find(params[:id])
  	@comments = Post.find(params[:id]).comments
  	@newcomment = Comment.new
  end

  def commentcreate
  	@newcomment = Comment.new
  	@newcomment.post_id = params[:post_id]
  	@newcomment.content = params[:ccontent]
  	@newcomment.save

  	redirect_to '/show/'+params[:post_id]
  end
end
