class Assessment < ActiveRecord::Base
  belongs_to :user
  belongs_to :behavior

  validates :user_id,     presence: true
  validates :behavior_id, presence: true
#  validates :user_tick,   presence: true
#  validates :master_tick, presence: true
end
