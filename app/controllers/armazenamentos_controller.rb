class ArmazenamentosController < ApplicationController

  def index
    @armazenamentos = Armazenamento.all
  end

  def edit
    @armazenamento = Armazenamento.find(params[:id])
  end

  def update
    @armazenamento = Armazenamento.find(params[:id])
    @armazenamento.update(armazenamentos_params)
    redirect_to armazenamentos_path
  end

  private

  def armazenamentos_params
    params.require(:armazenamento).permit(:quantidade, :produto_id)
  end

  def atribui_usuario
    usuario = Usuario.first
    @armazenamento.usuario = usuario
  end

end