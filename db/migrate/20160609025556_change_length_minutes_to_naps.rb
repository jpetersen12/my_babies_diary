class ChangeLengthMinutesToNaps < ActiveRecord::Migration
  def change
    change_column :naps, :length_hours, :integer
    change_column :naps, :length_minutes, :integer

  end
end
