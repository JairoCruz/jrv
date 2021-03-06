class DepartamentosController < ApplicationController
  
  def index
    # @departamentos = Departamento.all
    @departamentos = Departamento.paginate(:page => params[:page], :per_page => 4)
  end

  
  def show
    @departamento = Departamento.find(params[:id])
  end

  def new
    @departamento = Departamento.new
    10.times { @departamento.jrvs.build }
  end

  def create
    @departamento = Departamento.new(departamento_params)
    if @departamento.save
      redirect_to @departamento
    else
      render :new
    end
  end


  def edit
    @departamento = Departamento.find(params[:id])
  end

  def update 
    @departamento = Departamento.find(params[:id])

    if @departamento.update(departamento_params)
      redirect_to @departamento
    else
      render :edit
    end
  end

  def destroy 
    @departamento = Departamento.find(params[:id])
    @departamento.destroy

    redirect_to action: "index"
  end


  private
    def departamento_params
      params.require(:departamento).permit(:name, :junta, jrvs_attributes: [:id, :partido, :enteros, :fraccionados, :_destroy])
    end


end
