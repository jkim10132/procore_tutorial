class CreateChallengeStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :challenge_statuses do |t|
      t.references :student, foreign_key: true
      t.references :challenge, foreign_key: true
      t.boolean :status
      t.integer :number_of_completed

      t.timestamps
    end
  end
end
