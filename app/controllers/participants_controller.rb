class ParticipantsController < ApplicationController
  def new
    render react_component: 'participants/Form', props: {
      form: {
        action: '/participants',
        method: 'post'
      }
    }
  end

  def create
    participant = Participant.create(participant_params.merge(user_id: current_user.id))
    redirect_to participant
  end

  def show
    participant = Participant.find(participant_params['id'])
    render react_component: 'participants/Show', props: participant_props(participant)
  end

  def edit
    id = participant_params['id']
    participant = Participant.find(id)
    render react_component: 'participants/Form', props: participant_props(participant).merge(
      form: {
        action: "/participants/#{id}",
        method: 'patch'
      }
    )
  end

  def update
    participant = Participant.find(participant_params['id'])
    puts participant_params
    participant.update(participant_params)
    participant.save!
    redirect_to participant
  end

  private

  def participant_params
    params.permit(:id, :display_name, :about_me, :zip_code)
  end

  def participant_props(participant)
    {
      name: participant.display_name,
      about: participant.about_me,
      zip: participant.zip_code
    }
  end
end
