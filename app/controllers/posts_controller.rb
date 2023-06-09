class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.image.attach(params[:post][:image])
    if @post.save
    redirect_to root_path
    else
    render :new
    end
  end
  

  private
  def post_params
    params.require(:post).permit(:title, :image, :description).merge(user_id: current_user.id)
  end

  
end
