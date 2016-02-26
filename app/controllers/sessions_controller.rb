class SessionsController < ApplicationController
  include SessionsHelper

  def new

  end

  def create
  	@tenant = Tenant.find_by(email: params[:email].downcase)
  	if @tenant && @tenant.authenticate(params[:password])
  		log_in_tenant @tenant
  		render json: @tenant
  	else
      render json: { errors: "Not authenticated" },
                status: :unauthorized
  	end
  end

  def destroy
  	log_out_tenant
  	#render json:
  end
end
