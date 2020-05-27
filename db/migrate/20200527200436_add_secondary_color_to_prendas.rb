class AddSecondaryColorToPrendas < ActiveRecord::Migration[5.1]
  def change
    add_column :prendas, :color_secundario, :string
    add_column :prendas, :textura, :integer
  end
end
