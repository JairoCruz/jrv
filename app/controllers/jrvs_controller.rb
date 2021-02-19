class JrvsController < ApplicationController

    def index
       # @total_por_partido = Jrv.select(:partido, :enteros, :fraccionados).group(:partido).sum(:enteros)
       @total_por_partido = Jrv.select(:partido, :total).group(:partido).sum(:total)
      
       @ahuachapan = Jrv.ahuachapan_x_partido_total
       @santa_ana = Jrv.santa_ana_x_partido_total
       @sonsonate = Jrv.sonsonate_x_partido_total
       @la_libertad = Jrv.la_libertad_x_partido_total
       @chalatenango = Jrv.chalatenango_x_partido_total
       @cuscatlan = Jrv.cuscatlan_x_partido_total
       @san_salvador = Jrv.san_salvador_x_partido_total
       @la_paz = Jrv.la_paz_x_partido_total
       @cabanas = Jrv.cabanas_x_partido_total
       @san_vicente = Jrv.san_vicente_x_partido_total
       @usulutan = Jrv.usulutan_x_partido_total
       @san_miguel = Jrv.san_miguel_x_partido_total
       @morazan = Jrv.morazan_x_partido_total
       @la_union = Jrv.la_union_x_partido_total

       @ahuachapan_total = Jrv.ahuachapan_total
       @santa_ana_total = Jrv.santa_ana_total
       @sonsonate_total = Jrv.sonsonate_total
       @la_libertad_total = Jrv.la_libertad_total
       @chalatenango_total = Jrv.chalatenango_total
       @cuscatlan_total = Jrv.cuscatlan_total
       @san_salvador_total = Jrv.san_salvador_total
       @la_paz_total = Jrv.la_paz_total
       @cabanas_total = Jrv.cabanas_total
       @san_vicente_total = Jrv.san_vicente_total
       @usulutan_total = Jrv.usulutan_total
       @san_miguel_total = Jrv.san_miguel_total
       @morazan_total = Jrv.morazan_total
       @la_union_total = Jrv.la_union_total

    end
    
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
