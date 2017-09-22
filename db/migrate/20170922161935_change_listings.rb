class ChangeListings < ActiveRecord::Migration[5.0]
  def up
    remove_column :listings, :type_of_employment
    remove_column :listings, :required_education
    remove_column :listings, :college_major
    remove_column :listings, :benefits
    add_column :listings, :type_of_employments_id, :integer, null: false, unique: true
    add_column :listings, :education_levels_id, :integer, unique: true
    add_column :listings, :college_majors_id, :integer, unique: true
    add_column :listings, :benefits_id, :integer, unique:true
  end
  def down
    remove_column :listings, :type_of_employments_id, :integer
    remove_column :listings, :education_levels_id
    remove_column :listings, :college_majors_id
    remove_column :listings, :benefits_id
    add_column :listings, :type_of_employment, :string
    add_column :listings, :required_education, :string
    add_column :listings, :college_major, :string
    add_column :listings, :benefits, :string
  end
end
