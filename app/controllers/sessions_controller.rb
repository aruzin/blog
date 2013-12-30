class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && authenticate(user, params[:session][:password])
			sign_in(user)
			redirect_to posts_path(user)
		else
			render 'new'
		end
	end

	def destroy
	end

	private
		def authenticate(user, password)
			if user.password == password
				return true
			else
				return false
			end
		end
end
