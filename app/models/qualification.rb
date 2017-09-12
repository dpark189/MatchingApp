class Qualification < ApplicationRecord
  has_one :user
  has_many :matchitems
end
