class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :gift_img
      t.string :description
      t.integer :person_id

      t.timestamps
    end
  end
end
