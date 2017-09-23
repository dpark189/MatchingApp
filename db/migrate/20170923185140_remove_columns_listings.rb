class RemoveColumnsListings < ActiveRecord::Migration[5.0]
  def up
    remove_column :listings, :type_of_employments_id
    remove_column :listings, :education_levels_id
    remove_column :listings, :college_majors_id
    remove_column :listings, :benefits_id
  end
  def down
    add_column :listings, :type_of_employments_id, :integer
    add_column :listings, :education_levels_id, :integer
    add_column :listings, :college_majors_id, :integer
    add_column :listings, :benefits_id, :integer
  end
end
