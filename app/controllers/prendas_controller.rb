class PrendasController < ApplicationController
  def index
    @prendas = Prenda.all
  end

  def show
    @prenda = Prenda.find(params[:id].to_i)
  end
end
