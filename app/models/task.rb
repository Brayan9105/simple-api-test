class Task < ApplicationRecord
  belongs_to :checklist

  validates_presences_of :nombre
end
