class CreateAtuendo < ActiveRecord::Migration[5.1]
  def change
    create_table :atuendos do |t|
      t.references :prenda_torso
    end
  end
end
