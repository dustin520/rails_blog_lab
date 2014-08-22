require 'rails_helper'

RSpec.describe PostsController, :type => :controller do

	describe "GET #index" do
		it "responds successful with an HTTP 200" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
			myPost = Post.create()
			get :edit, :id => myPost.id
		end

		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end

		it "loads all of the posts into @posts" do
			post1, post2 = Post.create!, Post.create!
			get :index

			expect(assigns(:posts)).to match_array([post1, post2])
		end
	end

	describe "GET #edit" do
		it "should check the edit route" do
			myPost = Post.create()
			get :edit, :id => myPost.id
			expect(response).to be_success
		end
	end
end
