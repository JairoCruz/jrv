class Voto < ApplicationRecord
    belongs_to :jrv
    accepts_nested_attributes_for :jrv
end
