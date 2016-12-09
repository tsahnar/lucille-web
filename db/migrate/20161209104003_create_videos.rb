class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.string 	:title
    	t.string 	:youtube_link
    	t.integer	:sort_order
    	t.timestamps
    end
  end
end
