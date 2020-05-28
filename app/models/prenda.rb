class Prenda < ApplicationRecord
  belongs_to :prenda_tipo
  belongs_to :guardarropa

  enum tipo: [:gorro, :sombrero, :remera, :buzo, :campera]
  enum textura: [:gabardina, :nylon, :jean]
end
