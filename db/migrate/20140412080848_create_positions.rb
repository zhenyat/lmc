class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name,  null: false
      t.string :title, null: false

      t.timestamps
    end
    Position.create name: 'seller',            title: 'Продавец-консультант'
    Position.create name: 'dept_manager',      title: 'Менеджер отдела'
    Position.create name: 'sector_head',       title: 'Руководитель сектора'
    Position.create name: 'store_director',    title: 'Директор магазина'
  end
end
