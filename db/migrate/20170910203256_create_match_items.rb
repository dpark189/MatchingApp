class CreateMatchItems < ActiveRecord::Migration[5.0]
  def change
    create_table :matchitems do |t|
      t.string :matchitem, null: false, unique: true
      t.timestamps
    end
  end
end
