FactoryBot.define do
  factory :listing do
    type                   { 'Love' }
    title                  { 'Spreading love' }
    description            { 'Description for spreading love' }
    reference_url          { Faker::Internet.url('reciprocity.com', "/#{title}") }
    publish_start_date     { DateTime.now }
    interaction_start_date { DateTime.now }
    interaction_end_date   { DateTime.now + 1.week }
    publish_end_date       { DateTime.now + 2.week }
    zip_code               { Faker::Address.zip_code }
    created_by_id          { create(:participant) }
  end
end


