class Student < ApplicationRecord
  belongs_to :team
  has_many :challenge_statuses
end
