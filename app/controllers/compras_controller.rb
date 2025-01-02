class ComprasController < ApplicationController

  def index
    @compras = Compra.all
  end

  def new
    @compra = Compra.new
  end

  def create
    @compra = Compra.new(compras_params)
    atribui_usuario
    if @compra.save
      redirect_to compras_path
    else
      render :new
    end
  end

  def edit
    @compra = Compra.find(params[:id])
  end

  def destroy
    @compra = Compra.find(params[:id])
    @compra.destroy
    redirect_to compras_path
  end

  def update 
    @compra=Compra.find(params[:id])
    @compra.update(compras_params)
    redirect_to compras_path
  end

  private

  def compras_params
    params.require(:compra).permit(:quantidade, :valor, :data, :descricao, :produto_id)
  end

  def atribui_usuario
    usuario = Usuario.first
    @compra.usuario = usuario
  end

end