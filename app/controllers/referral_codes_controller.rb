class ReferralCodesController < ApplicationController

  def create
    referral_codes = []
    referral_code_params[:quantity].times do
      referral_codes += new_invite_code
    end

    current_user.referral_codes.create(referral_codes)
  end

  private

    # look up code by nonce or code name 
    def find_invite_code
      if referral_code_params[:nonce]
        ReferralCode.find(nonce: referral_code_params[:nonce])
      elsif referral_code_params[:code]
        ReferralCode.find_by(code: referral_code_params[:code], type: 'invite')
      end
    end

    def new_invite_code
      {
        code: referral_code_params[:code], 
        nonce: ReferralCode.nonce, 
        type: 'invite'
      }
    end

    def referral_code_params
      params.require(:referral_code).permit(:nonce, :type, :code, :participant_id, :used, :quantity)
    end
end
