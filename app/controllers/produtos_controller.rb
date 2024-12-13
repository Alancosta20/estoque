class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produtos_params)
    atribui_usuario
    if @produto.save
      redirect_to produtos_path
    else
      render :new
    end
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy
    redirect_to produtos_path
  end

  def update 
    @produto=Produto.find(params[:id])
    @produto.update(produtos_params)
    redirect_to produtos_path
  end

  private

  def produtos_params
    params.require(:produto).permit(:nome, :emoji)
  end

  def atribui_usuario
    usuario = Usuario.first
    @produto.usuario = usuario
  end
  

end