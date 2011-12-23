class MessageMailer < ActionMailer::Base
  default :from => Rails.application.config.mailer_recipient
  
  def mail_message(message)
    @message = message
    mail(:to => message.from_email, 
      :subject => "#{Rails.application.config.site_title} - Message Notification")
  end
end
