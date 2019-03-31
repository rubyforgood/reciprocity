FactoryBot.define do
  factory :participant do
    display_name { 'Love' }
    about_me { '' }
    zip_code { '94110' }
    user { create(:user) }
  end
end
