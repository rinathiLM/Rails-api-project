class RemoveDurationFromHikes < ActiveRecord::Migration[5.1]
  def change
    remove_column :hikes, :duration, :time
  end
end
