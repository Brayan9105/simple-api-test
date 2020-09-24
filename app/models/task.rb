class Task < ApplicationRecord
  belongs_to :checklist

  validates_presence_of :nombre
end
