class MessagesController < ApplicationController
  
  def show
    @message = Message.new(:form_name => params[:id])
  end
  
  def create
    @message = Message.new(params[:message])
    
    if @message.invalid? 
      render :action => 'show'
      return
    end
    
    @message.status = :new
    @message.ip = request.remote_ip
    
    if @message.save
      MessageMailer.mail_message(@message).deliver
      render 'thank_you'
    else
      render :action => 'show'
      flash[:notice] = 'Unable to send message. Please try again.'
    end
    
  end
    
end
