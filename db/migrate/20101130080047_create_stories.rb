class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string    :title
      t.text      :description
      t.text      :how_to_demo
      t.integer   :storypoint_value_id
      t.integer   :business_value_id
      t.integer   :priority
      t.integer   :story_status_id
      t.integer   :story_type_id
      t.integer   :component_id
      t.datetime  :started_at
      t.datetime  :finished_at

      t.timestamps
    end
    
    add_index :stories, :component_id
    add_index :stories, :story_status_id
    add_index :stories, :story_type_id
    
  end

  def self.down
    drop_table :stories
  end
  
end
