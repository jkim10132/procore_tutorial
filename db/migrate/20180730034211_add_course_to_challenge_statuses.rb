class AddCourseToChallengeStatuses < ActiveRecord::Migration[5.1]
  def change
    add_reference :challenge_statuses, :course, foreign_key: true
  end
end
