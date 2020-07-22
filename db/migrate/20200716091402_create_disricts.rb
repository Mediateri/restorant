class CreateDisricts < ActiveRecord::Migration[6.0]
  def change
    create_table :disricts do |t|
      t.string :name

      t.timestamps
    end
  end
end
