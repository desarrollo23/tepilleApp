class InfoUsuario < ApplicationRecord
  belongs_to :Localidad
  belongs_to :Genero
  belongs_to :Usuario
end
