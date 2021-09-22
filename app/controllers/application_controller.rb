class ApplicationController < ActionController::Base
	before_action :set_current_user

	def current_user
		@user
	end

	private 

	def set_current_user
		@user = User.find_or_create_by(ip: request.remote_ip)
	end
end
