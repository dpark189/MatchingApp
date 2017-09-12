class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.belongs_to :user, null: false, unique: true
      t.timestamps
    end
  end
end
