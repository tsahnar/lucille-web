class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string 	:image
    	t.integer	:sort_order
    	t.timestamps
    end
  end
end
