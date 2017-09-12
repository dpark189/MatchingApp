class AddMatchItemToQualifications < ActiveRecord::Migration[5.0]
  def up
    remove_column :qualifications, :name
    add_reference :qualifications, :matchitems, foreign_key: true, unique: true
  end
  def down
    add_column :qualifications, :name, :string
    remove_column :qualifications, :matchitems_id
  end
end
