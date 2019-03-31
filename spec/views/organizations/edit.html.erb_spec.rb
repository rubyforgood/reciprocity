require 'rails_helper'

RSpec.describe 'organizations/edit', type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
                                            name: 'MyString',
                                            website_url: 'MyString',
                                            twitter_username: 'MyString',
                                            facebook_username: 'MyString',
                                            instagram_username: 'MyString',
                                            logo_upload: '',
                                            phone: 'MyString',
                                            street_address: 'MyString',
                                            city: 'MyString',
                                            state: 'MyString',
                                            zip: 'MyString',
                                            description: 'MyString'
                                          ))
  end

  it 'renders the edit organization form' do
    render

    assert_select 'form[action=?][method=?]', organization_path(@organization), 'post' do
      assert_select 'input[name=?]', 'organization[name]'

      assert_select 'input[name=?]', 'organization[website_url]'

      assert_select 'input[name=?]', 'organization[twitter_username]'

      assert_select 'input[name=?]', 'organization[facebook_username]'

      assert_select 'input[name=?]', 'organization[instagram_username]'

      assert_select 'input[name=?]', 'organization[logo_upload]'

      assert_select 'input[name=?]', 'organization[phone]'

      assert_select 'input[name=?]', 'organization[street_address]'

      assert_select 'input[name=?]', 'organization[city]'

      assert_select 'input[name=?]', 'organization[state]'

      assert_select 'input[name=?]', 'organization[zip]'

      assert_select 'input[name=?]', 'organization[description]'
    end
  end
end
