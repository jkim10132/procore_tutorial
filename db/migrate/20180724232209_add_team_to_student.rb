class AddTeamToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :team, foreign_key: true
  end
end
