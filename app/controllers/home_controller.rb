class HomeController < ApplicationController
  def index

  end

  def show
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
      }
    }
  end
end
