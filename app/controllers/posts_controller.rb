class PostsController < ApplicationController
  def new
    @post = Post.new
    @users = User.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      flash.now[:alert] = "Something went wrong"
      redirect_to :new_post
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
