class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "assessments",  "behaviors",    name: "assessments_behavior_id_fk"
    add_foreign_key "assessments",  "users",        name: "assessments_user_id_fk"
    add_foreign_key "behaviors",    "competencies", name: "behaviors_competency_id_fk"
    add_foreign_key "behaviors",    "levels",       name: "behaviors_level_id_fk"
    add_foreign_key "competencies", "clusters",     name: "competencies_cluster_id_fk"
    add_foreign_key "competencies", "positions",    name: "competencies_position_id_fk"
    add_foreign_key "users",        "levels",       name: "users_level_id_fk"
    add_foreign_key "users",        "positions",    name: "users_position_id_fk"
  end
end
