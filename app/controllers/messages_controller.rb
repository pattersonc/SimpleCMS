class MessagesController < ApplicationController
  
  def new
    @message = Message.new
    @form_name = params['form_name'] || 'contact_form'
  end
  
  def create
    @message = Message.new(params[:message])
    
    if !@message.valid? 
      @form_name = params['form_name'] || 'contact_form'
      render :action => 'new'
      return
    end
    
    @message.status = 'New'
    @message.ip = request.remote_ip
    
    if @message.save
      MessageMailer.send_message @message
    else
      render :action => 'new'
    end
    
  end
  
end
