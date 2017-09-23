class FixColumnNameListingType < ActiveRecord::Migration[5.0]
  def change
    rename_column :listings, :type_of_employments, :kind_of_employments
  end
end
