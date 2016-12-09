class AddSecurityExtensionsToAdminUsers < ActiveRecord::Migration
  def change
  	add_column :admin_users, :role, :integer, index: true

  	# password expirable
  	add_column :admin_users, :password_changed_at, :datetime, index: true

  	# session limitable
  	add_column :admin_users, :unique_session_id, :string, limit: 20
  	
  	# expirable
  	add_column :admin_users, :last_activity_at, :datetime, index: true
  	add_column :admin_users, :expired_at, :datetime, index: true

  	# lockable
  	add_column :admin_users, :failed_attempts, :integer, default: 0
  	add_column :admin_users, :unlock_token, :string
  	add_column :admin_users, :locked_at, :datetime 	  	
  end
end