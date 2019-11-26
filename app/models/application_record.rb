class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true


before_action :authenticated?; :current_user, :current_cart
  #pour forcer à s'identifier

def current_user
	if session [:user_id]
		@user = User.find(session[:user_id])
	end
end

def current_cart
	if login?
		@cart = @user.cart
end

def login?
	! !current_user
end

def authenticated?
	redirect_to_store_login_path unless login?

end