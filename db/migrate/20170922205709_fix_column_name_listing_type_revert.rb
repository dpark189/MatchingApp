class FixColumnNameListingTypeRevert < ActiveRecord::Migration[5.0]
  def change
    rename_column :listings, :kind_of_employments, :type_of_employments
  end
end
