FactoryBot.define do
  factory :user do
    email { 'test@love.com' }
    password { 'topsecret' }
    password_confirmation { 'topsecret' }

    after(:build) do |u|
      u.skip_confirmation!
      u.save!
    end
  end
end
