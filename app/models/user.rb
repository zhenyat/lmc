class User < ActiveRecord::Base
  belongs_to :position
  belongs_to :level

  validates :position_id, presence: true
  validates :level_id,    presence: true
  validates :first_name,  presence: true
  validates :last_name,   presence: true

  def name
    "#{last_name} #{first_name}"
  end
end
