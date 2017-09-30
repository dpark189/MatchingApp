class Requirement < ApplicationRecord
  has_many :matchitem
  belongs_to :listing

  accepts_nested_attributes_for :matchitem

end
