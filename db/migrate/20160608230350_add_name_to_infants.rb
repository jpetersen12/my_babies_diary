class AddNameToInfants < ActiveRecord::Migration
  def change
    add_column :infants, :name, :string
    add_column :infants, :age, :integer
    add_column :infants, :image, :string
  end
end
