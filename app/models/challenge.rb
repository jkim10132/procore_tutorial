class Challenge < ApplicationRecord
  belongs_to :course
  has_many :challenge_statuses
end
