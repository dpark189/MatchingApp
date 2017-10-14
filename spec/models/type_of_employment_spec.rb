require 'rails_helper'

RSpec.describe TypeOfEmployment, type: :model do
  it { should have_valid(:name).when('item1', 'item2') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should validate_uniqueness_of(:name) }
  end

  describe 'TypeOfEmployment' do
  context 'create a type_of_employment item' do
    let(:user){ FactoryGirl.build(:user) }
    let(:listing){ Listing.new(user_id: user, job_title: "job title", max_starting_salary: "1", description: "job description") }
    let(:type_of_employment){ FactoryGirl.build(:type_of_employment, :listing_id => listing) }

    it 'has a listing association' do
      expect(type_of_employment.listing).to be(listing.id)
    end

  end
  end
