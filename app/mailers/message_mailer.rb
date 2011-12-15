class MessageMailer < ActionMailer::Base
  default from: "chris@celerify.com"
  
  def send_message(message)
    @message = message
    mail(:to => "chris@celerify.com", :subject => "#{Rails.application.config.site_title} - Message Notification")
  end
end
