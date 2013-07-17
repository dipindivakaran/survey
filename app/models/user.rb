class User < ActiveRecord::Base
  acts_as_authentic
  has_many :questions
  has_many :answers
  attr_accessible :title, :email, :first_name, :last_name, :phone, :password ,:password_confirmation, :is_active
end
