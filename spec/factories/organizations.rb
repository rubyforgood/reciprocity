FactoryBot.define do
  factory :organization do
    name { Faker::Company.name }
    website_url { Faker::Internet.url }
    twitter_username { "@#{name}-org" }
    facebook_username { "@#{name}-org" }
    instagram_username { "@#{name}-org" }
    phone { Faker::PhoneNumber.phone_number  }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip_code }
    description { "Description for oraganization #{name}" }
  end
end
