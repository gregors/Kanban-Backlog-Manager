class CreateStoryTypes < ActiveRecord::Migration
  def self.up
    create_table :story_types do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :story_types
  end
end
