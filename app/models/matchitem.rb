class Matchitem < ApplicationRecord

  belongs_to :qualification

  validates :matchitem, presence: true, uniqueness: true
  validates :qualification_id, presence: true

end
