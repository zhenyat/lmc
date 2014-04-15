class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :name,  null: false
      t.string :title, null: false

      t.timestamps
    end
    Cluster.create name: 'functional',  title: 'Функциональные'
    Cluster.create name: 'personality', title: 'Личностные'
    Cluster.create name: 'managerial',  title: 'Управленческие'
    Cluster.create name: 'strategical', title: 'Стратегические'
  end
end
