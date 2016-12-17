ActiveAdmin.register Event do
	menu label: "Events"
	permit_params :title, :date, :link

	filter :title

	index do
		selectable_column
  		id_column
		column :title
		column :date
		column :link
		column :updated_at
		column :created_at
		actions defaults: true do
		end

	end 

	form do |f|
		f.inputs do
			f.input :title
			f.input :link
			f.input :date,  as: :datepicker, datepicker_options: { timepicker: true, format: 'Y-m-d H:i' }
		end
		f.actions
	end

end