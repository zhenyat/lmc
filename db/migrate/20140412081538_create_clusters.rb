class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.integer :rank,      null: false
      t.string  :name,      null: false
      t.string  :title,     null: false
      t.string  :description

      t.timestamps
    end
    add_index :clusters, :rank, unique: true
    add_index :clusters, :name, unique: true

    Cluster.create rank: 1, name: 'functional',  title: 'Функциональные', description: ''
    Cluster.create rank: 2, name: 'personality', title: 'Личностные',     description: ''
    Cluster.create rank: 3, name: 'managerial',  title: 'Управленческие', description: ''
    Cluster.create rank: 4, name: 'strategical', title: 'Стратегические', description: ''
  end
end