class CreateTrucks < ActiveRecord::Migration
  def self.up
    create_table :trucks do |t|
      t.integer :user_id, :null => false
      t.string :name, :null => false
      t.string :category
      t.string :website
      t.string :twitter_username
      t.string :facebook_url

      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_content_type
      t.datetime :photo_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :trucks
  end
end
