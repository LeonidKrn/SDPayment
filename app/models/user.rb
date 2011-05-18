class User < ActiveRecord::Base
  validates :username, :presence => true
  has_many :payments, :dependent => :nullify
end
