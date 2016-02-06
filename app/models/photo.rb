class Photo < ActiveRecord::Base

  validates :path, presence: true

end
