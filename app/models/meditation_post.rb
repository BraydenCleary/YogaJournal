class MeditationPost < ActiveRecord::Base
  attr_accessible :breath, :feeling, :length, :user_id

  belongs_to :user
end
