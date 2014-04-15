class Behavior < ActiveRecord::Base
  belongs_to :competency
  belongs_to :level

  validates :competency_id, presence: true
  validates :level_id,      presence: true
  validates :name,          presence: true
  validates :description,   presence: true
end
