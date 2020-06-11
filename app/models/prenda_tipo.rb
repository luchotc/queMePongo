class PrendaTipo < ApplicationRecord
  has_one :prenda
  enum categoria: [:cabeza, :torso, :piernas, :pies]

end
