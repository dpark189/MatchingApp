require 'rails_helper'

feature 'User index page', :devise do
  scenario 'user sees own email address' do
    user = FactoryGirl.create(:admin)
    signin(user.email, user.password)
    visit users_path
    expect(page).to have_content user.email
  end
end
