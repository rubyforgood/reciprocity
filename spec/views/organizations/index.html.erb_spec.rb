require 'rails_helper'

RSpec.describe 'organizations/index', type: :view do
  before(:each) do
    assign(:organizations, [
             Organization.create!(
               name: 'Name',
               website_url: 'Website Url',
               twitter_username: 'Twitter Username',
               facebook_username: 'Facebook Username',
               instagram_username: 'Instagram Username',
               phone: 'Phone',
               street_address: 'Street Address',
               city: 'City',
               state: 'State',
               zip: 'Zip',
               description: 'Description'
             ),
             Organization.create!(
               name: 'Name',
               website_url: 'Website Url',
               twitter_username: 'Twitter Username',
               facebook_username: 'Facebook Username',
               instagram_username: 'Instagram Username',
               phone: 'Phone',
               street_address: 'Street Address',
               city: 'City',
               state: 'State',
               zip: 'Zip',
               description: 'Description'
             )
           ])
  end

  it 'renders a list of organizations' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Website Url'.to_s, count: 2
    assert_select 'tr>td', text: 'Twitter Username'.to_s, count: 2
    assert_select 'tr>td', text: 'Facebook Username'.to_s, count: 2
    assert_select 'tr>td', text: 'Instagram Username'.to_s, count: 2
    assert_select 'tr>td', text: ''.to_s, count: 2
    assert_select 'tr>td', text: 'Phone'.to_s, count: 2
    assert_select 'tr>td', text: 'Street Address'.to_s, count: 2
    assert_select 'tr>td', text: 'City'.to_s, count: 2
    assert_select 'tr>td', text: 'State'.to_s, count: 2
    assert_select 'tr>td', text: 'Zip'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
  end
end
