class PrendasController < ApplicationController
  before_action :set_prenda, only: [:show, :edit, :update, :destroy]

  # GET /prendas
  def index
    if current_user
      @prendas = current_user.prendas
    else
      []
    end
  end

  # GET /prendas/1
  def show
  end

  # GET /prendas/new
  def new
    @prenda = Prenda.new
  end

  # GET /prendas/1/edit
  def edit
  end

  # POST /prendas
  def create
    @prenda = Prenda.new(prenda_params)
    if @prenda.save
      redirect_to @prenda, notice: 'Prenda was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /prendas/1
  def update
    if @prenda.update(prenda_params)
      redirect_to @prenda, notice: 'Prenda was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /prendas/1
  def destroy
    @prenda.destroy
    redirect_to prendas_url, notice: 'Prenda was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prenda
      @prenda = Prenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prenda_params
      params.require(:prenda).permit(:categoria, :color, :tipo, :color_secundario, :textura, :name)
    end
end
