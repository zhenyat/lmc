class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :rank,  null: false
      t.string :name,  null: false
      t.string :title, null: false

      t.timestamps
    end
    Level.create rank: 1, name: 'novice',        title: 'Начинающий'
    Level.create rank: 2, name: 'specialist',    title: 'Специалист'
    Level.create rank: 3, name: 'professional',  title: 'Профессионал'
    Level.create rank: 4, name: 'expert',        title: 'Эксперт'
  end
end
