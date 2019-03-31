class InvitationMailer < ApplicationMailer
  default from: 'reciprocity@love.com'

  def send_referral_code(email, code)
    @email = email
    @nonce = code.nonce
    mail(to: email, subject: 'You are invited to sign up for Reciprocity.Love!')
  end
end
