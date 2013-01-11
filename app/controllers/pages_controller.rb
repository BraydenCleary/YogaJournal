class PagesController < ApplicationController

def home
	@user = User.where(:id => session[:user_id]).first
end


end 