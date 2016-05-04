class PagesController < ApplicationController
	def index
    @post = Post.last
	end

	def about
	end

	def post
	end

	def contact
	end
end
