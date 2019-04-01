class ParticipantsController < ApplicationController
  def new
    render react_component: 'participants/Form', props: {
      form: {
        action: '/participants',
        method: 'post',
        token: session[:_csrf_token]
      }
    }
  end

  def create
    Participant.create(participant_params.merge(user_id: current_user.id))
    redirect_to profile_path
  end

  def show
    participant = if participant_params[:id]
                    Participant.find(participant_params[:id])
                  else
                    Participant.find_by(user_id: user_id)
                  end
    render(react_component: 'participants/Show', props: participant_props(participant))
  end

  def edit
    participant = Participant.find_by(user_id: user_id)
    render react_component: 'participants/Form', props: participant_props(participant).merge(
      form: {
        action: "/participants/#{user_id}",
        method: 'patch',
        token: session[:_csrf_token]
      }
    )
  end

  def update
    participant = Participant.find_by(user_id: user_id)
    puts participant_params
    participant.update(participant_params)
    participant.save!
    redirect_to '/'
  end

  private

  def participant_params
    params.permit(:display_name, :about_me, :zip_code, :interest_list)
  end

  def participant_props(participant)
    {
      about: participant.about_me,
      name: participant.display_name,
      zip: participant.zip_code
    }
  end

  def user_id
    current_user.id
  end
end
