class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.integer :user_id,     null: false
      t.integer :behavior_id, null: false
      t.boolean :user_tick,   null: false, dafault: false
      t.boolean :master_tick, null: false, dafault: false

      t.timestamps
    end
  end
end
