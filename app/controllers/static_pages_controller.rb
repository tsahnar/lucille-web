class StaticPagesController < ApplicationController
	def index
		@events = Event.all.order(:date).limit(3)
		@videos = Video.all.order(:sort_order)
		@pictures = Picture.all.order(:sort_order)
	end

	def contact
		if params[:contact][:name].present? && params[:contact][:email].present? && params[:contact][:message].present?

			 @msg = {class: 'success' , text: I18n.t('contact_success')}
			 puts "FFF"
			 # LucilleMailer.contact(params[:contact][:email], {name: params[:contact][:name], message: params[:contact][:message]}).deliver_now
		else
			 @msg = {class: 'error' , text: I18n.t('errors.server.general')}
		end
	end

	def unsubscribe
		s = Subscription.find_by(email: params[:email])
		if s.present?
			s.send_newsletter = false
			s.save
		end
	end
end