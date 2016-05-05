class PagesController < ApplicationController
	def home
    @post = Post.published.last
	end

	def about
	end

	def post
	end

	def contact
	end
end
