class Cluster < ActiveRecord::Base
  has_many :competencies

  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
