class Prenda < ApplicationRecord
  enum categoria: [:cabeza, :torso, :piernas, :pies]
  enum tipo: [:gorro, :sombrero, :remera, :buzo, :campera]
  enum textura: [:gabardina, :nylon, :jean]
end
