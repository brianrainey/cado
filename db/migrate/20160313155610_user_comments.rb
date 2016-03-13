class UserComments < ActiveRecord::Migration
  def change
    change_column(:comments, :commenter, :integer)
    rename_column(:comments, :commenter, :user_id)
  end
end
