class LucilleMailer < ActionMailer::Base
  default from: "LucilleCrew <no-reply@lucillecrew.com>"


  def contact(email, info)
  	 @info = info
  	 mail to: "info@lucillecrew.com", from: email,  subject: 'Contact Mail'
  end

  def subscription_mail(email)
    @email = email
      mail to: email, subject: 'Thanks for subscribing'
  end
 
end