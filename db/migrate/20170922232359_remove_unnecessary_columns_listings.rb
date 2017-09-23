class RemoveUnnecessaryColumnsListings < ActiveRecord::Migration[5.0]
  def up
    remove_column :listings, :type_of_employments
    remove_column :listings, :education_levels
    remove_column :listings, :college_majors
    remove_column :listings, :benefits
  end
  def down
    add_column :listings, :type_of_employments, :integer
    add_column :listings, :education_levels, :integer
    add_column :listings, :college_majors, :integer
    add_column :listings, :benefits, :integer
  end
end
