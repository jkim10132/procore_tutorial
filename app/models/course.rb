class Course < ApplicationRecord
  has_many :challenges
  has_and_belongs_to_many :students

  validates :name, :students, :challenges, :presence => true
  validates :name, :challenges, :length => {:minimum => 1}
  validates :name, :uniquesness => true
  
end
