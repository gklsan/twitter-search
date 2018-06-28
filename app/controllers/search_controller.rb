class SearchController < ApplicationController

	def index
	end

	def search_in_twitter
		if params[:seach_text].present?
			opt = {count: 50}
			@result = CLIENT.search(params[:seach_text], opt).take(100)
		else
			redirect_to root_path and return
		end
	end
end
