class Cluster < ActiveRecord::Base
  has_many :competencies

  validates :rank,  presence: true, uniqueness: true
  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
