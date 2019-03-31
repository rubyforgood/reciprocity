class PublicAccessController < ActionController::Base
  def redeem
    redirect_to new_user_registration_path(code: params[:code]) if params[:code]
  end
end
