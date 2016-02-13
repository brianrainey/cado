class Photo < ActiveRecord::Base

  validates :path, presence: true
  has_many :comments

end
