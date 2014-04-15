class Position < ActiveRecord::Base
  has_many :competencies
  has_many :users

  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
