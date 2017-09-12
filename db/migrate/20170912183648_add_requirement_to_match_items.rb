class AddRequirementToMatchItems < ActiveRecord::Migration[5.0]
  def change
    add_column :matchitems, :requirement_id, :integer
  end
end
