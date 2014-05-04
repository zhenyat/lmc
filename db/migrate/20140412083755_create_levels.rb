class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :rank,  null: false
      t.string  :name,  null: false
      t.string  :title, null: false

      t.timestamps
    end
    add_index :levels, :rank, unique: true
    add_index :levels, :name, unique: true
    
    Level.create rank: 1, name: 'novice',        title: 'Начинающий'
    Level.create rank: 2, name: 'specialist',    title: 'Специалист'
    Level.create rank: 3, name: 'professional',  title: 'Профессионал'
    Level.create rank: 4, name: 'expert',        title: 'Эксперт'
  end
end
