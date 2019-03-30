class ParticipantsController < ApplicationController
  def new
    render react_component: 'participants/New', props: { participantName: 'Suzy Volunteer' }
  end

  def create
    participant = Participant.create(participant_params)
    redirect_to participant
  end

  def show
    participant = Participant.find(participant_params['id'])
    render react_component: 'participants/Show', props: {
      name: participant.display_name,
      about: participant.about_me,
      zip: participant.zip_code
    }
  end

  private

  def participant_params
    params.permit(:id, :display_name, :about_me, :zip_code)
  end
end
