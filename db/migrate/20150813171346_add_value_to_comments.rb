class AddValueToComments < ActiveRecord::Migration
  def change
    add_column :comments, :t_reddit_id, :integer
  end
end
