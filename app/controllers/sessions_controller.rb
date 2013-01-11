class SessionsController < ApplicationController

def new
end

def create
	user = User.find_by_username(params[:username])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		flash[:message] = "Welcome, #{user.name}!"
		redirect_to root_url
	else
		render 'new'
	end
end

def destroy

	session[:user_id] = nil
	redirect_to root_url

end

end