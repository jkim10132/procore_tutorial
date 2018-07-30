class Challenge < ApplicationRecord
  belongs_to :course, optional: true
  has_many :challenge_statuses
end
