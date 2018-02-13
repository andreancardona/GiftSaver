class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :img
      t.string :birth_day

      t.timestamps
    end
  end
end
