class Listing < ApplicationRecord
  belongs_to :user
  has_many :type_of_employments
  has_many :education_levels
  has_many :college_majors
  has_many :benefits
  has_one :requirement
  has_many :matchitems, through: :requirements

  validates :user, presence: true
  validates :job_title, presence: true
  validates :description, presence: true
  validates :type_of_employments, presence: true
end
