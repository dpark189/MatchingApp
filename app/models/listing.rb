class Listing < ApplicationRecord
  belongs_to :user
  has_many :type_of_employments
  has_many :education_levels
  has_many :college_majors
  has_many :benefits
  has_one :requirement
  has_many :matchitems, through: :requirements
  accepts_nested_attributes_for :type_of_employments
  accepts_nested_attributes_for :education_levels
  accepts_nested_attributes_for :college_major
  accepts_nested_attributes_for :benefit
  accepts_nested_attributes_for :requirement
  accepts_nested_attributes_for :matchitems


  validates :user, presence: true
  validates :job_title, presence: true
  validates :description, presence: true
end
