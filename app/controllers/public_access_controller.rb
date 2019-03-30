class PublicAccessController < ActionController::Base

  def redeem
    if (params[:nonce] || params[:code])
      code = find_invite_code
      if code.present?
        code.use
        redirect_to login
      else
        redirect_back 'Invalid code.'
      end
    end
  end

  private

    # look up code by nonce or code name 
    def find_invite_code
      if params[:nonce]
        ReferralCode.find(nonce: params[:nonce])
      elsif params[:code]
        ReferralCode.find_by(code: referral_code_params[:code], type: 'invite')
      end
    end
end
