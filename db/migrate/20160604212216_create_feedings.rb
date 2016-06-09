class CreateFeedings < ActiveRecord::Migration
  def change
    create_table :feedings do |t|
      t.integer :infant_id
      t.string :note
      t.float :amount
      t.date :date
      t.time :time

      t.timestamps

    end
  end
end
