module SessionsHelper
	# Logs in the given tenant
	def log_in_tenant(tenant)
		session[:tenant_id] = tenant.id
	end

	# Returns the current logged in tenant (if any)
	def current_tenant
		@current_tenant ||= Tenant.find_by(id: session[:tenant_id])
  	end

		# Returns true if the tenant is logged in, false otherwise.
  	def logged_in?
  		!current_tenant.nil?
  	end

		# Logs out the current tenant
  	def log_out_tenant
  		session.delete(:tenant_id)
  		@current_tenant = nil
  	end
end
