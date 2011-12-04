class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # send password reset instructions for new user
  after_create { |admin| admin.send_reset_password_instructions }
  
  # allow us to create new user without password
  def password_required?
    new_record? ? false : super
  end
end
