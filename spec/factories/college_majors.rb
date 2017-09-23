FactoryGirl.define do
  factory :college_major do |major|
    major.name 'Math'
    major.description 'doing math'
    major.listings_id :listing
  end
end
