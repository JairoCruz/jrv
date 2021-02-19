class Jrv < ApplicationRecord

    before_save :sum_enteros_fraccionados_to_total

    belongs_to :departamento

    scope :ahuachapan_x_partido_total, -> { includes(:departamento).where(departamento: {name: "AHUACHAPAN"}).group(:partido).sum(:total)}
    scope :santa_ana_x_partido_total, -> { includes(:departamento).where(departamento: {name: "SANTA ANA"}).group(:partido).sum(:total)}
    scope :sonsonate_x_partido_total, -> { includes(:departamento).where(departamento: {name: "SONSONATE"}).group(:partido).sum(:total)}
    scope :la_libertad_x_partido_total, -> { includes(:departamento).where(departamento: {name: "LA LIBERTAD"}).group(:partido).sum(:total)}
    scope :chalatenango_x_partido_total, -> { includes(:departamento).where(departamento: {name: "CHALATENANGO"}).group(:partido).sum(:total)}
    scope :cuscatlan_x_partido_total, -> { includes(:departamento).where(departamento: {name: "CUSCATLAN"}).group(:partido).sum(:total)}
    scope :san_salvador_x_partido_total, -> { includes(:departamento).where(departamento: {name: "SAN SALVADOR"}).group(:partido).sum(:total)}
    scope :la_paz_x_partido_total, -> { includes(:departamento).where(departamento: {name: "LA PAZ"}).group(:partido).sum(:total)}
    scope :cabanas_x_partido_total, -> { includes(:departamento).where(departamento: {name: "CABAÑAS"}).group(:partido).sum(:total)}
    scope :san_vicente_x_partido_total, -> { includes(:departamento).where(departamento: {name: "SAN VICENTE"}).group(:partido).sum(:total)}
    scope :usulutan_x_partido_total, -> { includes(:departamento).where(departamento: {name: "USULUTAN"}).group(:partido).sum(:total)}
    scope :san_miguel_x_partido_total, -> { includes(:departamento).where(departamento: {name: "SAN MIGUEL"}).group(:partido).sum(:total)}
    scope :morazan_x_partido_total, -> { includes(:departamento).where(departamento: {name: "MORAZAN"}).group(:partido).sum(:total)}
    scope :la_union_x_partido_total, -> { includes(:departamento).where(departamento: {name: "LA UNION"}).group(:partido).sum(:total)}
    

    scope :ahuachapan_total, -> { includes(:departamento).where(departamento: {name: "AHUACHAPAN"}).group('departamento.name').sum(:total)}
    scope :santa_ana_total, -> { includes(:departamento).where(departamento: {name: "SANTA ANA"}).group('departamento.name').sum(:total)}
    scope :sonsonate_total, -> { includes(:departamento).where(departamento: {name: "SONSONATE"}).group('departamento.name').sum(:total)}
    scope :la_libertad_total, -> { includes(:departamento).where(departamento: {name: "LA LIBERTAD"}).group('departamento.name').sum(:total)}
    scope :chalatenango_total, -> { includes(:departamento).where(departamento: {name: "CHALATENANGO"}).group('departamento.name').sum(:total)}
    scope :cuscatlan_total, -> { includes(:departamento).where(departamento: {name: "CUSCATLAN"}).group('departamento.name').sum(:total)}
    scope :san_salvador_total, -> { includes(:departamento).where(departamento: {name: "SAN SALVADOR"}).group('departamento.name').sum(:total)}
    scope :la_paz_total, -> { includes(:departamento).where(departamento: {name: "LA PAZ"}).group('departamento.name').sum(:total)}
    scope :cabanas_total, -> { includes(:departamento).where(departamento: {name: "CABAÑAS"}).group('departamento.name').sum(:total)}
    scope :san_vicente_total, -> { includes(:departamento).where(departamento: {name: "SAN VICENTE"}).group('departamento.name').sum(:total)}
    scope :usulutan_total, -> { includes(:departamento).where(departamento: {name: "USULUTAN"}).group('departamento.name').sum(:total)}
    scope :san_miguel_total, -> { includes(:departamento).where(departamento: {name: "SAN MIGUEL"}).group('departamento.name').sum(:total)}
    scope :morazan_total, -> { includes(:departamento).where(departamento: {name: "MORAZAN"}).group('departamento.name').sum(:total)}
    scope :la_union_total, -> { includes(:departamento).where(departamento: {name: "LA UNION"}).group('departamento.name').sum(:total)}




    private
        def sum_enteros_fraccionados_to_total
            self.total = enteros + fraccionados
        end

end
