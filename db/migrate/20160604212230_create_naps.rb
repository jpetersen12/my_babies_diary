class CreateNaps < ActiveRecord::Migration
  def change
    create_table :naps do |t|
      t.integer :infant_id
      t.string :note
      t.integer :length
      t.date :date
      t.time :time

      t.timestamps

    end
  end
end
