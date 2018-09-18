class Reporte < ApplicationRecord
  belongs_to :Usuario
  belongs_to :Ruta
  belongs_to :Estacion
end
