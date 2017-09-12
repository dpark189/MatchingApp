FactoryGirl.define do
  factory :matchitems do
    sequence(:matchitems) {|n| "match item #{n}"}
  end
end
