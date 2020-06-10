class SessionsController < ApplicationController
  def new
    #MOSTRAR EL FORMULARIO DE LOGIN.
  end

  def create
    # PARAMS -> email y pw.
    user = User.find_by(email: params[:email])
    
    #AUTENTICAR AL USUARIO Y EN CASO DE EXITO CREAR LA SESION.
  end

  def destroy
    #DESTRUIR LA SESION
  end
end
