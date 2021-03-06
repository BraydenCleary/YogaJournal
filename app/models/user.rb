class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :username

  validates :email, :name, :password, :password_confirmation, :presence => :true
  has_secure_password

  has_many :reviews
  has_many :meditation_posts
  has_many :yoga_posts
end
