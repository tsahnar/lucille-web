ActiveAdmin.register Subscription do
	menu label: "Subscriptions"
	permit_params :email

	filter :email
	index do
		selectable_column
  		id_column
		column :email
		column :send_newsletter
		column :updated_at
		column :created_at
		actions defaults: true do
		end

	end 

	form do |f|
		f.inputs do
			f.input :email
		end
		f.actions
	end

end