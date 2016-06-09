class CreateInfants < ActiveRecord::Migration
  def change
    create_table :infants do |t|
      t.integer :user_account_id

      t.timestamps

    end
  end
end
