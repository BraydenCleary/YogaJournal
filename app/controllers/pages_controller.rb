class PagesController < ApplicationController

def home
	@user = User.where(:id => session[:user_id]).first
end

def yoga
end

def meditation
end

def resources
end

end 