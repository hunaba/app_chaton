class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart #le user a un shoppingcart
  #has_many :orders ?
  #belongs_to :cart
  #controller cart ou order ??
#####################################################
  #after_create :welcome_send

  #def welcome_send
  #  UserMailer.welcome_email(self).deliver_now
  #end
  

end

