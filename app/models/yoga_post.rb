class YogaPost < ActiveRecord::Base
  attr_accessible :breath, :feeling, :intention, :user_id

  belongs_to :user
end
