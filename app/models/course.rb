class Course < ApplicationRecord
  has_many :challenges
  has_and_belongs_to_many :students
end
