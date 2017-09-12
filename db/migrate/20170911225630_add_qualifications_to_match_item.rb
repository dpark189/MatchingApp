class AddQualificationsToMatchItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :matchitems, :qualification, foreign_key: true
  end
end
