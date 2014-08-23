class CommentsController < ApplicationController

  def index
    access_posts
    @comments = @post.comments
  end

  def new
    access_posts
    @comment = @post.comments.new
  end

  def create
    access_posts

    new_comment = params.require(:comment).permit(:name, :title, :description)
    @comment = @post.comments.create(new_comment)

    
    redirect_to [@post, @comment]
  end

  def show
    access_posts
    # @comment = @post.comments.find(params[:id])
    @comments = @post.comments
  end

  private

  def access_posts
    post_id = params[:post_id]
    @post = Post.find(post_id)
  end

end
