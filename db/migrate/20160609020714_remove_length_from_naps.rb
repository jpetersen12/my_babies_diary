class RemoveLengthFromNaps < ActiveRecord::Migration
  def change
    remove_column :naps, :length, :integer
    add_column :naps, :length_hours, :decimal
    add_column :naps, :length_minutes, :decimal
  end
end
