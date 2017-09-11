class AddUserToQualifications < ActiveRecord::Migration[5.0]
  def change
    add_reference :qualifications, :user, foreign_key: true
  end
end
