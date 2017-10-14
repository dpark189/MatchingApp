class TypeOfEmployment < ApplicationRecord
  belongs_to :listing, optional: true
  validates :name, presence: true, uniqueness: true
end
