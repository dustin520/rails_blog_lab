class TagsController < ApplicationController

	def index
		@tags = Tag.all
		render :index  # needed? how come? due to nested resources?
	end

end