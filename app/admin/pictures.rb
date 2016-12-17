ActiveAdmin.register Picture do
	menu label: "Pictures"
	permit_params :image, :sort_order

	filter :title

	index do
		selectable_column
  		id_column
		column :sort_order
		column :image do |instance|
			"#{image_tag instance.image_url, style:'width:200px'}".html_safe
		end
		column :updated_at
		column :created_at
		actions defaults: true do
		end

	end 

	form do |f|
		f.inputs do
			f.input :image
			f.input :sort_order
		end
		f.actions
	end

end