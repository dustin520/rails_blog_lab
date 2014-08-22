require 'rails_helper'

RSpec.describe Post, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # Change below to do posts
  it "should create new student w/o saving to db" do
	  post1 = Post.new(:title => "nice title", :author=>"Licata",:description=>"hello")
	  expect(post1.new_record?).to eq(true)
	end
	it "should test that save works" do 
	  post1 = Post.new(:title => "nice title", :author=>"Licata",:description=>"hello")
		expect(post1.new_record?).to eq(true)
		post1.save
		expect(post1.new_record?).to eq(false) 
	end
	it "should test that save works differently" do 
		Post.create(:title => "nice title", :author=>"Licata",:description=>"hello")
	  post1 = Post.find_by_author("Licata")
		expect(post1).not_to eq(nil) 
	end
end
