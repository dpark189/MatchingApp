class Matchitem < ApplicationRecord

  belongs_to :qualification
  belongs_to :requirement

  validates :name, presence: true, uniqueness: true
  validates :qualification_id, presence: true

end
