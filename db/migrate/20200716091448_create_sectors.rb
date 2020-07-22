class CreateSectors < ActiveRecord::Migration[6.0]
  def change
    create_table :sectors do |t|
      t.string :name
      t.references :disrict, null: false, foreign_key: true

      t.timestamps
    end
  end
end
