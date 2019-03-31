module Api
  module V1
    class ReferralCodesController < ApplicationController
      def index
        render json: current_user.participant.referral_codes
      end

      def create
        if referral_code_params[:code]
          create_custom_codes
        elsif referral_code_params[:email]
          send_invitation
        end

        render json: current_user.participant.referral_codes
      end

      def destroy
        code = ReferralCode.find_access_code(referral_code_params)
        code.destroy if code.present?
        render json: current_user.participant.referral_codes
      end

      private

      def create_custom_codes
        referral_codes = []
        qty = referral_code_params[:quantity] || 1
        if qty&.is_an_int
          qty.times do
            referral_codes += new_invite_code
          end
        end

        current_user.participant.referral_codes.create(referral_codes)
      end

      def send_invitation
        current_user.participant.referral_codes.create(new_invite_code)
      end

      def new_invite_code
        {
          code: referral_code_params[:code],
          nonce: ReferralCode.nonce,
          code_type: 'invite'
        }
      end

      def referral_code_params
        params.require(:referral_code).permit(:nonce, :type, :code, :participant_id, :used, :quantity)
      end
    end
  end
end
