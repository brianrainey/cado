class Photo < ActiveRecord::Base

  validates :path, presence: true
  has_many :comments
  default_scope {order(created_at: 'DESC')}

end
