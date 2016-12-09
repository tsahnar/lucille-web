# == Schema Information
#
# Table name: admin_users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :integer
#  password_changed_at    :datetime
#  unique_session_id      :string(20)
#  last_activity_at       :datetime
#  expired_at             :datetime
#  failed_attempts        :integer          default("0")
#  unlock_token           :string
#  locked_at              :datetime
#

class AdminUser < ActiveRecord::Base
  	devise :database_authenticatable, :recoverable, :rememberable, :trackable, 
  		:validatable, :password_expirable, :password_archivable, :session_limitable, 
        :expirable, :lockable, :timeoutable

    enum role: { administrator: 0 }

	# validates :role, presence: true
end
