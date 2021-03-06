class CreateOldPasswords < ActiveRecord::Migration
  def change
    create_table :old_passwords do |t|
		t.string 		:encrypted_password, null: false
		t.string 		:password_salt
		t.string 		:password_archivable_type, null: false
		t.integer 		:password_archivable_id, null: false
		t.datetime 		:created_at
		
		t.index 		[:password_archivable_type, :password_archivable_id], name: :index_password_archivable    	
    end
  end
end