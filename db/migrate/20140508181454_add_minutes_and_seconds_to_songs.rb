class AddMinutesAndSecondsToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :minutes, :integer
    add_column :songs, :seconds, :integer
  end
end
