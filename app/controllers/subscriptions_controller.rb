class SubscriptionsController < ApplicationController
	def create
		subscription = Subscription.find_by(email: params[:subscription][:email])
		if subscription.blank?
			s = Subscription.create(email: params[:subscription][:email])
			LucilleMailer.subscription_mail(params[:subscription][:email]).deliver_now
			s.save!
		end
	end
end