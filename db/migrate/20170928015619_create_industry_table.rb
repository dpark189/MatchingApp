class CreateIndustryTable < ActiveRecord::Migration[5.0]
  def change
    create_table :industries do |t|
      t.belongs_to :user
      t.string :name, null: false, unique: true
      t.string :description
      t.timestamps
    end
  end
end
