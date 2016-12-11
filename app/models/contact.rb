
class Contact 
	include ActiveModel::Model
	include ActiveModel::Validations
	attr_accessor :email
	attr_accessor :name
	attr_accessor :message
	validates :email, :name, :message, presence:true;
	validates :email, format: { with: /.+@.+\..+/i }
end
