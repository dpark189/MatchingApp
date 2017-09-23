class FixColumnBenefitsDescription < ActiveRecord::Migration[5.0]
  def change
    rename_column :benefits, :descripiton, :description
  end
end
