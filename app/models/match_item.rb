class MatchItem < ApplicationRecord
  belongs_to :qualifications

  validates :match_item, presence: true, uniqueness: true
  validates :qualification_id, presence: true
end
