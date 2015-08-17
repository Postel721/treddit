class AddUserIdToTReddits < ActiveRecord::Migration
  def change
    add_column :t_reddits, :user_id, :integer
  end
end
