require 'rails_helper'

  RSpec.describe Listing, type: :model do
    it { should have_valid(:user_id).when('1', '2', '3') }
    it { should have_valid(:job_title).when('words') }
    it { should have_valid(:description).when('words') }
    it { should belong_to(:user) }
    it { should have_one(:requirement) }
    it { should_not have_valid(:job_title).when(nil, '') }
    it { should_not have_valid(:description).when(nil, '') }
  end
