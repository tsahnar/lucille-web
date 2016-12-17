# == Schema Information
#
# Table name: videos
#
#  id           :integer          not null, primary key
#  title        :string
#  youtube_link :string
#  sort_order   :integer
#  created_at   :datetime
#  updated_at   :datetime
#  thumbnail    :string
#

class Video < ActiveRecord::Base
	validates :youtube_link, :sort_order, presence:true
	mount_uploader :thumbnail, ThumbnailUploader
	
end
