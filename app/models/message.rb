# == Schema Information
#
# Table name: messages
#
#  id         :integer         not null, primary key
#  message    :string(255)
#  status     :string(255)
#  ip         :string(255)
#  created_at :datetime
#  updated_at :datetime
#  from_email :string(255)
#  from_name  :string(255)
#

class Message < ActiveRecord::Base
  attr_accessor :form_name
  
  validates :message, :presence => true
  
  validates :from_email, :presence => true, :format => { 
    :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, 
    :message => "is not a valid email."}
  
  validates :from_name, :presence => true
end
