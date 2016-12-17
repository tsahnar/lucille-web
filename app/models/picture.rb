# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  image      :string
#  sort_order :integer
#  created_at :datetime
#  updated_at :datetime
#
class Picture < ActiveRecord::Base
	validates :image, :sort_order, presence:true
	mount_uploader :image, ThumbnailUploader	
end
