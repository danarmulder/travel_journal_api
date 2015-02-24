class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def create
    post = Post.new(post_params)
    post.save
    render json: post
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy

    render json: {status: "Deleted"}
  end

  private
  def post_params
    params.require(:post).permit(:photo, :name, :description)
  end
end
