class AddFileIdToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :file_id, :string
  end
end
