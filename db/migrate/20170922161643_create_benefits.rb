class CreateBenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :benefits do |t|
      t.belongs_to :listing
      t.string :name, null: false, unique: true
      t.string :descripiton
      t.timestamps
    end
  end
end
