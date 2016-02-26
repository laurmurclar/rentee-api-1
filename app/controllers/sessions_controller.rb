class SessionsController < ApplicationController
  def new

  end

  def create
  	@tenant = Tenant.find_by(email: params[:email].downcase)
  	if @tenant && @tenant.authenticate(params[:password])
  		# login_tenant @tenant
  		render json: @tenant
  	else
      render json: { errors: "Not authenticated" },
                status: :unauthorized
  	end
  end

  def destroy
  	logout
  	#render json:
  end
end
