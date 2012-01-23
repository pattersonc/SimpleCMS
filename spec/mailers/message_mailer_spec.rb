require "spec_helper"

describe MessageMailer do

  before(:each) do 
    @message = Message.new(
    :from_email => "user@example.com", 
    :from_name => "example user",
    :message => "hello world",
    :ip => "192.168.1.1")
  end

  describe "mail_message" do
    
    it "should render without error" do
      lambda { MessageMailer.mail_message(@message) }.should_not raise_error
    end  
    
    describe "render" do
      
      
    end
    
  end
end
