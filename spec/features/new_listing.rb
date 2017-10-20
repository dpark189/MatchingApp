require 'rails_helper'

feature 'Admin creates new listing', :devise do
  scenario 'Admin sees form' do
    user = FactoryGirl.create(:admin)
    signin(user.email, user.password)
    visit new_listing_path
    expect(page).to have_content "Job Description"
  end
end

feature 'Company creates new listing', :devise do
  scenario 'Company sees form' do
    user = FactoryGirl.create(:company)
    signin(user.email, user.password)
    visit new_listing_path
    expect(page).to have_content "Job Description"
  end
end

feature 'Unauthorized user tries to create new listing', :devise do
  scenario 'Unauthorized user cannot see form' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_listing_path
    expect(page).to have_content "Access denied"
  end
end
