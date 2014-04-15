class Level < ActiveRecord::Base
  has_many :behaviors
  has_many :users

  validates :rank,  presence: true, uniqueness: true
  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true

end
