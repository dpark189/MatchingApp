require 'rails_helper'

RSpec.describe EducationLevel, type: :model do
  it { should have_valid(:name).when('item1', 'item2') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should validate_uniqueness_of(:name) }
end

describe 'EducationLevel' do
  context 'create a education_level item' do
    let(:user){ FactoryGirl.build(:user) }
    let(:listing){ Listing.new(user_id: user, job_title: "job title", max_starting_salary: "1", description: "job description") }
    let(:education_level){ FactoryGirl.build(:education_level, :listing_id => listing) }

    it 'has a listing association' do
      expect(education_level.listing).to be(listing.id)
    end

  end
end
