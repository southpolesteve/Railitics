class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

end
