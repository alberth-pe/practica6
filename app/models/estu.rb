class Estu < ApplicationRecord
    validates :nombres, :apellidos, :carrera, :carnet, :nacimiento, :celular, presence: true
end
