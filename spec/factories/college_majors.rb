FactoryGirl.define do
  factory :college_major do |major|
    major.name 'Math'
    major.description 'doing math'
    major.listing_id :listing
  end
end
