class Comment < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user, :through => :answer
  attr_accessible :comment
end
