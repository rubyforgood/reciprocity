class PublicAccessController < ActionController::Base

  def redeem
    if params[:code]
      redirect_to new_user_registration_path(:code => params[:code])
    end
  end
end
