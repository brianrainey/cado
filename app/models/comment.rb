class Comment < ActiveRecord::Base
  belongs_to :photo
  belongs_to :user
  default_scope {order(created_at: 'ASC')}
end
