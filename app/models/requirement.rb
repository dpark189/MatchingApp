class Requirement < ApplicationRecord
  has_many :matchitem
  belongs_to :listing
end
