class ApplicationController < ActionController::Base
	#ce controlleur prend le pas sur tous les controllers
	before_action :authenticated?, :current_user, :current_cart
					#current_user, current_cart retourne instance variable, 
					#pas besoin dassigner d'action a user et cart dans dautre controller
	def current_user
		if session[:user_id]
			@user = User.find(session[:user_id])
	end
end

def current_cart
	if login?
		@cart = @user.cart
	#si un user se connecte, ca lui renvoie son panier

	else
		if session[:cart]
			@cart = Cart.find(session[:cart])
			#ca cherche son panier 
		else
			@cart = Cart.create
			session[:cart] = @cart.id
			#ca cree un id panier
 		end
 	end
end

def login?
	! !current_user
end 

def authenticated?
	redirect_to store_login_path unless login? #a verifier
end