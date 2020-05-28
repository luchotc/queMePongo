class Atuendo < ApplicationRecord
  has_one :prenda_torso, class_name: "Prenda"
end
