if User.where(email: 'reciprocity@love.com').blank?
  user = User.new(email: 'reciprocity@love.com', password: 'topsecret', password_confirmation: 'topsecret')
  user.skip_confirmation!
  user.save!
end

10.times do |n|
  Participant.create!(
    display_name: "participant-#{n}",
    about_me: "long bio about participant-#{n}",
    zip_code: '94596',
    user: User.new(
      email: "participant-#{n}@love.com",
      password: 'topsecret',
      password_confirmation: 'topsecret'
    )
  )
end
