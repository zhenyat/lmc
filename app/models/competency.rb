class Competency < ActiveRecord::Base
  belongs_to :cluster
  belongs_to :position
  has_many   :behaviors

  validates :position_id, presence: true
  validates :cluster_id,  presence: true
  validates :name,        presence: true
  validates :title,       presence: true
end
