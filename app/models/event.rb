# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string
#  link       :string
#  date       :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
	validates :title, :date, presence: true
end
