class CreateMatchItems < ActiveRecord::Migration[5.0]
  def change
    create_table :match_items do |t|
      t.string :match_item, null: false, unique: true
      t.timestamps
    end
  end
end
