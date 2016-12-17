ActiveAdmin.register Video do
	menu label: "Videos"
	permit_params :title, :youtube_link, :sort_order, :thumbnail

	filter :title

	index do
		selectable_column
  		id_column
		column :title
		column :youtube_link do |instance|
			("<iframe width='200' height='200' src=" + instance.youtube_link + "?rel=0&amp;controls=0&amp;showinfo=0 frameborder='0' allowfullscreen></iframe>").html_safe
		end
		column :sort_order
		column :thumbnail do |instance|
			"#{image_tag instance.thumbnail_url, style:'width:200px'}".html_safe
		end
		column :updated_at
		column :created_at
		actions defaults: true do
		end

	end 

	form do |f|
		f.inputs do
			f.input :title
			f.input :youtube_link
			f.input :thumbnail
			f.input :sort_order
		end
		f.actions
	end

end