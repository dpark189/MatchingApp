require 'rails_helper'

RSpec.describe CollegeMajor, type: :model do
  it { should have_valid(:name).when('item1', 'item2') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should validate_uniqueness_of(:name) }
end

describe 'CollegeMajor' do
  context 'create a college_major item' do
    let(:user){ FactoryGirl.build(:user) }
    let(:listing){ Listing.new(user_id: user, job_title: "job title", max_starting_salary: "1", description: "job description") }
    let(:college_major){ FactoryGirl.build(:college_major, :listings_id => listing) }

    it 'has a listing association' do
      expect(college_major.listing).to be(listing.id)
    end

  end
end
