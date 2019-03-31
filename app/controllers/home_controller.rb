class HomeController < ApplicationController
  def index

  end

  def show
    participant = Participant.first
    render react_component: 'home/Show', props: {
      name: participant.display_name,
      about: participant.about_me,
      zip: participant.zip_code
    }
  end
end
