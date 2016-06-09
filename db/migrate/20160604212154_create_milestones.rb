class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :infant_id
      t.string :photo
      t.date :date
      t.string :description

      t.timestamps

    end
  end
end
