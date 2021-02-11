class Departamento < ApplicationRecord

    has_many :jrvs

    validates :name, presence: true
end
