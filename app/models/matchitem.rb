class Matchitem < ApplicationRecord

  belongs_to :qualification, optional: true
  belongs_to :requirement, optional: true

  validates :name, presence: true, uniqueness: true


end
