class PostsController < ApplicationController

	def index
		@posts = Post.all 
		@tags = Tag.all
		# @post_tag = Post_tag.all 
	end

	def new
		# auto rendered in ruby
	end

	def create
		new_post = (params[:post]).permit(:title, :author, :description)
		post = Post.create(new_post)
		new_tag = (params[:tag]).permit(:name)
		tag = Tag.find_or_create_by(name: new_tag[:name]) #???
		post.tags << tag
		# new_post_tag = (params[:post_tag]).permit(:date)
		# post_tag = Post_tag.create(new_post_tag.post_id)
		# post_tag.tag_id << post_tag
		redirect_to "/posts"
	end

	def show
		id = params[:id]
		@post = Post.find(id)
	end

end
