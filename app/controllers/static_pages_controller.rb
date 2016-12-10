class StaticPagesController < ApplicationController
	def index
		@events = Event.all.order(:date).limit(3)
	end

	def contact
		if params[:name].present? && params[:email].present? && params[:message].present?
			 @msg = {class: 'success' , text: I18n.t('contact_success')}
			 LucilleMailer.contact(params[:email], {fullname: params[:name], email: params[:email], company: params[:company], job: params[:job_title], phone: params[:phone],
			 	message: params[:message], delivery_num: params[:delivery_num]}).deliver_now
		else
			 @msg = {class: 'error' , text: I18n.t('errors.server.general')}
		end
	end
end