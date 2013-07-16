class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  attr_accessible :question
end
