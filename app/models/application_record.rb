class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  before_action :authenticated?, :current_user, :current_cart
  #pour forcer à s'identifier
  def current_user
  	if session[:user_id]
  		@user = user.find(session[:user_id])
  	end

end

def current_cart
	if login?
		@cart = @current.cart
		#si un user se connecte, ça lui renvoie son panier/cart
	end

def login?
	! !current_user
end

def authenficated?
	redirect_to_store_login_path
end

end