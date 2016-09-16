class ItemsController < ApplicationController
	def index
		@items = Item.all.order(likes_count: :desc)
	end
end
