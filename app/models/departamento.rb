class Departamento < ApplicationRecord

    has_many :jrvs, dependent: :destroy
    accepts_nested_attributes_for :jrvs, allow_destroy: true

    validates :name, :junta, presence: true

    scope :san_salvador, -> { includes(:jrvs).where(jrvs: {departamento_id: 7}).group('jrvs.partido').sum('jrvs.total')}

end
