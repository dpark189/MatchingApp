class Matchitem < ApplicationRecord

  belongs_to :qualification

  validates :match_item, presence: true, uniqueness: true
  validates :qualification_id, presence: true

end
