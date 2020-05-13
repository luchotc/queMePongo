class ModifyPrendas < ActiveRecord::Migration[5.1]
  def change
    add_column :prendas, :tipo, :integer
  end
end
