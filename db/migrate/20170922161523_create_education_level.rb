class CreateEducationLevel < ActiveRecord::Migration[5.0]
  def change
    create_table :education_levels do |t|
      t.belongs_to :users
      t.belongs_to :listing
      t.string :name, null: false, unique: true
      t.string :description
      t.timestamps
    end
  end
end
