class CreateRestoras < ActiveRecord::Migration[6.0]
  def change
    create_table :restoras do |t|
      t.string :name
      t.string :location
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
