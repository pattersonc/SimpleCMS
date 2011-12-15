class MessagesController < ApplicationController
  
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(params[:message])
    
    if @message.save
      MessageMailer.send_message @message
    else
      render :action => 'new'
    end
    
  end
  
end
