class SubscriptionsController < ApplicationController
	def create
		s = Subscription.create(email: params[:subscription][:email])
		LucilleMailer.subscription_mail(params[:subscription][:email]).deliver_now
		s.save!
	end
end