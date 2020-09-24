class Checklist < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates_presence_of :nombre, :creado_por
  
end
