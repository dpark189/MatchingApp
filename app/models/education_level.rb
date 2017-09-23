class EducationLevel < ApplicationRecord
  belongs_to :listing

  validates :name, presence: true, uniqueness: true
end
