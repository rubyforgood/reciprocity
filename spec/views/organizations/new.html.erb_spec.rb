require 'rails_helper'

RSpec.describe 'organizations/new', type: :view do
  before(:each) do
    assign(:organization, Organization.new(
                            name: 'MyString',
                            website_url: 'MyString',
                            twitter_username: 'MyString',
                            facebook_username: 'MyString',
                            instagram_username: 'MyString',
                            phone: 'MyString',
                            street_address: 'MyString',
                            city: 'MyString',
                            state: 'MyString',
                            zip: 'MyString',
                            description: 'MyString'
                          ))
  end

  it 'renders new organization form' do
    render

    assert_select 'form[action=?][method=?]', organizations_path, 'post' do
      assert_select 'input[name=?]', 'organization[name]'

      assert_select 'input[name=?]', 'organization[website_url]'

      assert_select 'input[name=?]', 'organization[twitter_username]'

      assert_select 'input[name=?]', 'organization[facebook_username]'

      assert_select 'input[name=?]', 'organization[instagram_username]'

      assert_select 'input[name=?]', 'organization[phone]'

      assert_select 'input[name=?]', 'organization[street_address]'

      assert_select 'input[name=?]', 'organization[city]'

      assert_select 'input[name=?]', 'organization[state]'

      assert_select 'input[name=?]', 'organization[zip]'

      assert_select 'input[name=?]', 'organization[description]'
    end
  end
end
