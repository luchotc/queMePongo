class AddNameToPrendas < ActiveRecord::Migration[5.1]
  def change
    add_column :prendas, :name, :string
  end
end
