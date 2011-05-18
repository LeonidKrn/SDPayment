class Payment < ActiveRecord::Base
  validates :pay, :length => {:minimum=> 0}
  belongs_to :user
end
