class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :position_id, null: false
      t.integer :level_id,    null: false
      t.string  :first_name,  null: false
      t.string  :last_name,   null: false

      t.timestamps
    end
    p_id = Position.find_by_name('seller').id
    l_id = Level.find_by_name('specialist').id
    User.create position_id: p_id, level_id: l_id, first_name: 'Елена',    last_name: 'Иванова'

    p_id = Position.find_by_name('dept_manager').id
    l_id = Level.find_by_name('novice').id
    User.create position_id: p_id, level_id: l_id, first_name: 'Григорий', last_name: 'Петров'

    p_id = Position.find_by_name('sector_head').id
    l_id = Level.find_by_name('expert').id
    User.create position_id: p_id, level_id: l_id, first_name: 'Ольга',    last_name: 'Сидорова'

    p_id = Position.find_by_name('store_director').id
    l_id = Level.find_by_name('professional').id
    User.create position_id: p_id, level_id: l_id, first_name: 'Василий',  last_name: 'Пупкин'
  end
end
