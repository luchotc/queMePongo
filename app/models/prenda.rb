class Prenda
  @@prendasRepository = [
      {id: 1, tipo: "pantalon", talle: "SM"},
      {id: 2, tipo: "saco", talle: "XL"}
  ]

  def self.all
    @@prendasRepository
  end

  def self.find(id)
    @@prendasRepository.find { |prenda| prenda[:id] == id }
  end
end
