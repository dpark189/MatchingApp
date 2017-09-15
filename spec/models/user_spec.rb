require 'rails_helper'

feature 'Sign in', :devise do
  scenario 'user cannot sign in if not registered' do
    signin('person@example.com', 'password')
    expect(page).to have_content 'Invalid email or password.'
  end
  scenario 'user cannot sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
  end
  scenario 'user cannot sign in with invaolid email' do
    user = FactoryGirl.create(:user)
    signin('invalid@email.com', user.password)
    expect(page).to have_content 'Invalid email or password.'
  end
  scenario 'user cannot sign in with invalid password.'
    user = FactoryGirl.create(:user)
    signin(user.email, 'invalidpass')
    expect(page).to have_content 'Invalid email or password.'
  end
end

RSpec.describe User, type: :model do
  it { should have_valid(:first_name).when('John', 'Sally') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Smith', 'Swanson') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:email).when('user@example.com', 'anotheremail@gmail.com') }
  it { should_not have_valid(:email).when(nil, '', 'urser', 'usersba.com', 'usersr@com') }

  it 'has a matching password confirmation for the password' do
    user = User.new
    user.password = 'password'
    user.password_confirmation = 'anotherpassword'

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end

end
