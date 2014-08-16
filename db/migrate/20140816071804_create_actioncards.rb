class CreateActioncards < ActiveRecord::Migration
  def change
    create_table :actioncards do |t|
      t.integer :competency_id, null: false
      t.integer :level_id,      null: false
      t.text    :description,   null: false

      t.timestamps
    end
  end
end
