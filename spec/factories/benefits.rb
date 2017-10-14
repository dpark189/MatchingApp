FactoryGirl.define do
  factory :benefit do |benefit|
    benefit.name 'Health Insurance'
    benefit.description 'health insurance'
    benefit.listing_id :listing
  end
end
