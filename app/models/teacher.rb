class Teacher < ActiveRecord::Base
  attr_accessible :biography, :image_url, :name

  has_many :reviews
end
