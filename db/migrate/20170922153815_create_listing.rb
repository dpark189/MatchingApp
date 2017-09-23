class CreateListing < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.belongs_to :user, null: false, unique: true
      t.string :job_title, null:false
      t.string :type_of_employment, null:false
      t.string :required_education
      t.string :college_major
      t.integer :max_starting_salary
      t.integer :benefits
      t.integer :publish_status
      t.string :description, null: false
      t.timestamps
    end
  end
end
