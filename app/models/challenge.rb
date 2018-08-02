class Challenge < ApplicationRecord
  belongs_to :course, optional: true
  has_many :challenge_statuses, :dependent => :delete_all
  validates :course_id, uniqueness: { scope: :file_id }
end
