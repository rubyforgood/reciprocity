require 'rails_helper'

RSpec.describe 'organizations/show', type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
                                            name: 'Name',
                                            website_url: 'Website Url',
                                            twitter_username: 'Twitter Username',
                                            facebook_username: 'Facebook Username',
                                            instagram_username: 'Instagram Username',
                                            logo_upload: '',
                                            phone: 'Phone',
                                            street_address: 'Street Address',
                                            city: 'City',
                                            state: 'State',
                                            zip: 'Zip',
                                            description: 'Description'
                                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Website Url/)
    expect(rendered).to match(/Twitter Username/)
    expect(rendered).to match(/Facebook Username/)
    expect(rendered).to match(/Instagram Username/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Description/)
  end
end
