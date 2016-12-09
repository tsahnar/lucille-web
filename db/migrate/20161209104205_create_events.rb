class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string 		:title
    	t.string		:link
    	t.datetime 		:date
    	t.timestamps
    end
  end
end
