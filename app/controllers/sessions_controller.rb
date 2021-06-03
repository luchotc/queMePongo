class SessionsController < ApplicationController

  def new
    new view: form do
      :email
      :password

      button :submit -> create
    end

  end

  # Autenticacion y creacion de sesion
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/', notice: 'Te logueaste exitosamente!'
    else
      flash.now[:alert] = "Tu usuario o contraseña son incorrectos"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', notice: 'te deslogueaste con exito'
  end
end

