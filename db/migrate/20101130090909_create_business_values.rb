class CreateBusinessValues < ActiveRecord::Migration
  def self.up
    create_table :business_values do |t|
      t.string :value
      t.timestamps
    end
    
     add_index :business_values, :value, :unique => true
  end

  def self.down
    drop_table :business_values
  end
end
