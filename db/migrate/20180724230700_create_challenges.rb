class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.integer :number_of_tasks
      t.string :name
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
