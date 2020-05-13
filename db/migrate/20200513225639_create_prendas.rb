class CreatePrendas < ActiveRecord::Migration[5.1]
  def change
    create_table :prendas do |t|
      t.integer :categoria
      t.string :color
    end
  end
end
