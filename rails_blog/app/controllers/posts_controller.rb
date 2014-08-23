class PostsController < ApplicationController

	def index
		@posts = Post.all 
		@tags = Tag.all
		# @post_tag = Post_tag.all # not needed? how come, was appended by Active record?? but needed in rails console? 
	end

	def new
		# auto rendered in ruby
	end

	def create
		# binding.pry
		new_post = (params[:post]).permit(:title, :author, :description)
		post = Post.create(new_post)
		new_tag = (params[:tag]).permit(:name)
		tag = Tag.find_or_create_by(name: new_tag[:name]) #??? syntax
		post.tags << tag  # get clarification 
		# new_post_tag = (params[:post_tag]).permit(:date)
		# post_tag = Post_tag.create(new_post_tag.post_id)
		# post_tag.tag_id << post_tag
		redirect_to "/posts"
	end

	def show
		id = params[:id]
		@post = Post.find(id)
		@tags = @post.tags  # added from hw review
		@comment = @post.comments.new # added from hw review w
	end

	def edit
		id = params[:id]
		@posts = Post.find(id)
	end

	def update
		post_id = params[:id]
		post = Post.find(post_id)

		# get updated data
		update_attributes = params.require(:post).permit(:title, :author, :description)
		# update the post
		post.update_attributes(update_attributes)

		# redirect to show, ??? the #{}
		# redirect_to "/post/#{post_id}"
		# more methods below to do same thing
		redirect_to post_path(post) # need @post ?? 	
		# redirect_to post
	end

	def destroy
		id = params[:id]
		@post = Post.find(id)
		@post.destroy
		redirect_to '/'
	end

	private

end
