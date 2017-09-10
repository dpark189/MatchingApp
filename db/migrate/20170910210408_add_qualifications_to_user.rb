class AddQualificationsToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :qualifications, foreign_key: true
  end
end
