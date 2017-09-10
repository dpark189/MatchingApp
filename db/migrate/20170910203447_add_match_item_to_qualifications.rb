class AddMatchItemToQualifications < ActiveRecord::Migration[5.0]
  def up
    remove_column :qualifications, :name
    add_reference :qualifications, :match_item, foreign_key: true, unique: true
  end
  def down
    add_column :qualifications, :name, :string
    remove_column :qualifications, :match_item_id
  end
end
