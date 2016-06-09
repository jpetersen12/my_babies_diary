class AddLengthMinutesToNaps < ActiveRecord::Migration
  def change
      add_column :naps, :length_minutes, :decimal
  end
end
