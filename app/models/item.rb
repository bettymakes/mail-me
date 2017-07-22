class Item < ApplicationRecord
  validates_presence_of :name, :quantity
  validates_numericality_of :quantity, greater_than: 0
end
