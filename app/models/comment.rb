class Comment < ActiveRecord::Base
  belongs_to :answer
  attr_accessible :comment
end
