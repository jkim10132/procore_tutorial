class ChallengeStatus < ApplicationRecord
  has_one :student
  has_one :challenge
end
