# == Schema Information
#
# Table name: subscriptions
#
#  id              :integer          not null, primary key
#  email           :string
#  created_at      :datetime
#  updated_at      :datetime
#  send_newsletter :boolean          default("true")
#

class Subscription < ActiveRecord::Base
	validates :email, presence: true
	validates :email, format: { with: /.+@.+\..+/i }, allow_blank: false
end
