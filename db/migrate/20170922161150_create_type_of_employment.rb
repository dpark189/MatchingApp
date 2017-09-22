class CreateTypeOfEmployment < ActiveRecord::Migration[5.0]
  def change
    create_table :type_of_employments do |t|
      t.belongs_to :users
      t.belongs_to :listings
      t.string :name, null: false, unique: true
      t.string :description
      t.timestamps
    end
  end
end
