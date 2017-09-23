class AddColumnListingToRequirements < ActiveRecord::Migration[5.0]
  def change
    add_reference :requirements, :listing, foreign_key: true
  end
end
