user = User.new(email: 'reciprocity@love.com',
             password: 'topsecret',
             password_confirmation: 'topsecret')

 user.skip_confirmation!
 user.save!
