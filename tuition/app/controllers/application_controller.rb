class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

	# protect_from_forgery with: :exception

 before_action :auth_user!
			#   before_action :authenticate_admin!
			# 	  # def authenticate_admin_or_user!
			# 	 	 # if user_signed_in?
			# 	 		# redirect_to root_path, alert: "You must be logged in as an admin or user."
			# 	 	 # end
			# 	 	# # if !admin_signed_in? and user_signed_in?
			# 	 	# # 	redirect_to root_path, alert: "You must be logged in as an admin or user."	
			# 	 	# # end
			#   # end
			# end


# call with :user and :public defined as either :all or an array
# of symbols that represent methods. Admins can do everything that users
# can (by definition of auth_user!).
def self.actions_permitted(hash)
  # first process exceptions to user authentication
  if hash[:public] == :all
    # skip all filters and return
    skip_before_filter :auth_user!
    skip_before_filter :authenticate_admin!
    return
  elsif hash[:public].kind_of?(Array)
    # skip user authentication for methods in :public array
    skip_before_filter :auth_user!, only: hash[:public]
  end

  # then process exceptions to admin authentication
  if hash[:user] == :all
    # users can do everything, so skip all admin authenticatoin
    skip_before_filter :authenticate_admin!

  elsif hash[:user].kind_of?(Array)
    if hash[:public].kind_of?(Array)
      # Join the two arrays and skip admin authentication as not to filter
      # actions allowed by the public or by users
      skip_before_filter :authenticate_admin!, only: (hash[:user] | hash[:public])
    else
      # otherwise, simply skip admin authentication for actions allowed by users
      skip_before_filter :authenticate_admin!, only: hash[:user]
    end

  elsif hash[:public].kind_of?(Array)
    # skip admin authentication for actions allowed by the public
    skip_before_filter :authenticate_admin!, only: hash[:public]
  end

end

# checks if user OR admin is authenticated.
def auth_user!(opts = {})
  if admin_signed_in?
  	authenticate_admin!
  else
  	authenticate_user!
  end
end
end