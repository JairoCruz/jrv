class Jrv < ApplicationRecord
    belongs_to :departamento
    has_many :votos
end
