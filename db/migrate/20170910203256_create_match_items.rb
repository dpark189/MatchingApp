class CreateMatchItems < ActiveRecord::Migration[5.0]
  def change
    create_table :matchitems do |t|
      t.belongs_to :qualification
      t.string :name, null: false, unique: true
      t.timestamps
    end
  end
end
