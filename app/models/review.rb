class Review < ActiveRecord::Base
  attr_accessible :day, :difficulty, :meditative_guidance, :personal_touch, :style, :teacher_id, :thoughts, :time, :user_id

  belongs_to :user
  belongs_to :teacher
end
