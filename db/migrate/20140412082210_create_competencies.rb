class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.integer :position_id, null: false
      t.integer :cluster_id,  null: false
      t.integer :rank,        null: false
      t.string  :name,        null: false
      t.string  :title,       null: false
      t.string  :description

      t.timestamps
    end
    add_index :competencies, :rank, unique: true
  end
end
