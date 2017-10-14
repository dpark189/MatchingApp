FactoryGirl.define do
  factory :type_of_employment do |type|
    type.name 'Full-Time'
    type.description 'full time work'
    type.listing_id :listing
  end
end
