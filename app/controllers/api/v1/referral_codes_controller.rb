module Api
  module V1
    class ReferralCodesController < ApplicationController
      def index; end

      def create
        referral_codes = []
        referral_code_params[:quantity].times do
          referral_codes += new_invite_code
        end

        current_user.referral_codes.create(referral_codes)
        # render json: current_user.referral_codes
      end

      def destroy
        code = ReferralCode.find_access_code(referral_code_params)
        code.destroy if code.present?
        render json: current_user.referral_codes
      end

      private

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
  end
end
