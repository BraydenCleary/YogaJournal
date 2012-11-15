class PagesController < ApplicationController

def home
	@user = User.where(:id => session[:user_id])
end


end 