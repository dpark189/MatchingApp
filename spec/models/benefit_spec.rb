require 'rails_helper'

RSpec.describe Benefit, type: :model do
  it { should have_valid(:name).when('item1', 'item2') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should validate_uniqueness_of(:name) }
end

describe 'Benefit' do
  context 'create a benefit item' do
    let(:user){ FactoryGirl.build(:user) }
    let(:listing){ Listing.new(user_id: user, job_title: "job title", max_starting_salary: "1", description: "job description") }
    let(:benefit){ FactoryGirl.build(:benefit, :listings_id => listing) }

    it 'has a listing association' do
      expect(benefit.listing).to be(listing.id)
    end

  end
end
