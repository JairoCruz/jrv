class JrvsController < ApplicationController
    
    def create 
        @departamento = Departamento.find(params[:departamento_id])
        @jrv = @departamento.jrvs.create(jrv_params)
        redirect_to departamento_path(@departamento)
    end

    def show 
       @jrv = Jrv.find(params[:id])
       2.times { @jrv.votos.build }
    end

    private
        def jrv_params
            params.require(:jrv).permit(:junta, :municipio, votos_attributes: [:id, :partido, :enteros, :fraccionados]) 
        end
end
