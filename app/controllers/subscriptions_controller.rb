class SubscriptionsController < ApplicationController
	def create
		s = Subscription.create(email: params[:subscription][:email])
		s.save!
	end
end