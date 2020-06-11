class SessionsController < ApplicationController
  def new
    #MOSTRAR EL FORMULARIO DE LOGIN.
  end

  def create
    # PARAMS -> email y pw.
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to prendas_path, notice: "Te logueaste!"
      #cookie = generar_cookie({user_id: user.id, wallet: 500})
      #encriptar_cookie(cookie, clave_secreta) #2389274892893
    else
      flash.now[:alert] = "Tu contraseña o email no son correctos"
      render :new
    end
      #AUTENTICAR AL USUARIO Y EN CASO DE EXITO CREAR LA SESION.
  end

  def destroy
    session[:user_id] = nil
    redirect_to prendas_path, notice: "Te deslogueaste!"
    #DESTRUIR LA SESION
  end
end
