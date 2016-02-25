module SessionsHelper
	def login_tenant
		session[:tenant_id] = tenant.id
	end

	def current_user
		@current_user ||= Tenant.find_by(id: session[:tenant_id])
  	end

  	def logged_in?
  		!current_user.nil?
  	end

  	def logout
  		session.delete(:user_id)
  		@current_user = nil
  	end
end
