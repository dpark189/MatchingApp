FactoryGirl.define do
  factory :benefit do |benefit|
    benefit.name 'Health Insurance'
    benefit.description 'health insurance'
    benefit.listings_id :listing
  end
end
