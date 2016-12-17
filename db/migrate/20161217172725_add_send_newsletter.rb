class AddSendNewsletter < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :send_newsletter, :boolean, default: true
  end
end
