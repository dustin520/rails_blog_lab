# Blog CRUD Lab

For tonight's lab, we'd like you to create a Blog app where a user can create a post, see all posts and see an individual post. The user should also be able to assign tags to each post and for every post they should be able to create a tag, view all tags, and view all posts by tags.

## Blog app description

1. Each post should have a title, description and author
2. Each tag should have a name
3. Remember that many posts can have many tags, and many tags can belong to multiple posts


## How to get started

1. Generate your models and migrations and begin to model your relationships (remember this is a many to many relationship that you should model using has_many through)
2. Run your migrations and make sure you have the correct foreign key setup
3. For each model, make sure everything is working in `rails console` before you start building your routes, controllers and views (create a post, create a tag, see what posts belong to a certain tag etc.)
4. Once you have tested your models in Rails console, create the routes required to create and show data with your models.
	*	Setup a route, make a controller method, and the associated view for a `post`.
	*  Continue this for the resource until you've implemented your index, new, create and show actions for `post`.
	*  Then go back and add the ability to add a `tag` with your new `post`
	*  Finally make a `TagsController`
		* `#index` should show all tags
		* `#show` should show you the `title` and `author` of every `post` associated with that `tag`.
			* each `post` on the show page should include a link to the associated `post`. Use **REST**ful practices for this link and you should be fine.


If you get stuck with the first two steps, look at the notes from this morning and try those examples to help solidify the routing and CRUD concepts. Once you are past step 3, look back at the notes from this afternoon to help you with routing, your controllers and views.



## Bonus
 
1. Add routes and methods to update an exiting post and destroy a post.

2. Try to include your own styling, bootstrap or another CSS framework in your application and style your blog.


