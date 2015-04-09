class CreateJazzies < ActiveRecord::Migration
  def self.up
    create_table :jazzies do |t|
      t.string :namespace
      t.string :controller
      t.string :action
      t.string :name
      t.text :content
      t.text :pending_content
      t.timestamps
    end
  end

  def self.down
    drop_table :jazzies
  end
end
