class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  attr_accessible :email, :first_name, :last_name, :phone, :username
end
