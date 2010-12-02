class CreateStoryStatuses < ActiveRecord::Migration
  def self.up
    create_table :story_statuses do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :story_statuses
  end
end
