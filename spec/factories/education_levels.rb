FactoryGirl.define do
  factory :education_level do |level|
    level.name 'BA'
    level.description 'bad ass'
    level.listings_id :listing
  end
end
