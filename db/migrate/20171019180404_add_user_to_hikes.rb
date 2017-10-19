class AddUserToHikes < ActiveRecord::Migration[5.1]
  def change
    add_reference :hikes, :user, foreign_key: true
  end
end
