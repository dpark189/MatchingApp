class CreateCollegeMajor < ActiveRecord::Migration[5.0]
  def change
    create_table :college_majors do |t|
      t.belongs_to :users
      t.belongs_to :listing
      t.string :name, null: false, unique: true
      t.string :description
      t.timestamps
    end
  end
end
