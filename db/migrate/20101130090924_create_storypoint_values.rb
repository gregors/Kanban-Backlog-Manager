class CreateStorypointValues < ActiveRecord::Migration
  def self.up
    create_table :storypoint_values do |t|
      t.string :value
      t.timestamps
    end
    
    add_index :storypoint_values, :value, :unique => true
  end

  def self.down
    drop_table :storypoint_values
  end
end
