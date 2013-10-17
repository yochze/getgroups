class HomeController < ApplicationController

	def index
		
	end

	def settings
		@user = current_user
	end
end
