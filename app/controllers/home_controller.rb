class HomeController < ApplicationController
  def index
    participant = current_user.participants.first
    render react_component: 'home/Show', props: {
      name: participant.display_name,
      about: participant.about_me,
      zip: participant.zip_code,
      listings: participant.listings.group_by(&:type),
      form: {
        action: '/listings',
        method: 'post',
        token: session[:_csrf_token],
        creator_id: current_user.id
      },
      inviteForm: {
        action: '/api/v1/referral_codes',
        method: 'post',
        token: session[:_csrf_token]
      },
      invitationCodes: current_user.participant.referral_codes

    }
  end
end
