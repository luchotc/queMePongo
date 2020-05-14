class PrendasController < ApplicationController
  def index
    @prendas = Prenda.all
  end

  def show
    @prenda = Prenda.find(params[:id].to_i)
  end

  def create
    Prenda.create
  end

  def update

  end

  def new

  end

  def edit

  end
end
