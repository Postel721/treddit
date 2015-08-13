class CreateTReddits < ActiveRecord::Migration
  def change
    create_table :t_reddits do |t|
      t.string :title
      t.string :author
      t.text :blog_entry

      t.timestamps null: false
    end
  end
end
