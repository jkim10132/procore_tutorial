class AddFilepathToChallenge < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :filepath, :string
  end
end
