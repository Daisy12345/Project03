class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
	   # before_action :authenticate_admin!
 
  		 before_action :authenticate_user!

	   	
  # before_action :authenticate_admin!
	  # def authenticate_admin_or_user!
	 	 # if user_signed_in?
	 		# redirect_to root_path, alert: "You must be logged in as an admin or user."
	 	 # end

	 	# # if !admin_signed_in? and user_signed_in?
	 	# # 	redirect_to root_path, alert: "You must be logged in as an admin or user."	
	 	# # end
	  # end
end
