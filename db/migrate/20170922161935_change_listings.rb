class ChangeListings < ActiveRecord::Migration[5.0]
  def up
    remove_column :listings, :type_of_employment
    remove_column :listings, :required_education
    remove_column :listings, :college_major
    remove_column :listings, :benefits
    add_column :listings, :type_of_employments, :integer, null: false, unique: true
    add_column :listings, :education_levels, :integer, unique: true
    add_column :listings, :college_majors, :integer, unique: true
    add_column :listings, :benefits, :integer, unique:true
  end
  def down
    remove_column :listings, :type_of_employments, :integer
    remove_column :listings, :education_levels
    remove_column :listings, :college_majors
    remove_column :listings, :benefits
    add_column :listings, :type_of_employment, :string
    add_column :listings, :required_education, :string
    add_column :listings, :college_major, :string
    add_column :listings, :benefits, :string
  end
end
