class AddUserIdToTweeets < ActiveRecord::Migration[8.0]
  def change
    add_column :tweeets, :user_id, :integer
  end
end
