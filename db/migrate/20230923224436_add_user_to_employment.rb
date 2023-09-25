class AddUserToEmployment < ActiveRecord::Migration[7.0]
  def change
    add_reference :employments, :user, foreign_key: true
  end
end
