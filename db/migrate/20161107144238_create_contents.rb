class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
    	t.hstore :tags, default: {}, null: false
    	t.integer :link_id

      t.timestamps null: false
    end
  end
end