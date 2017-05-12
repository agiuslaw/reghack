class Dealership < ApplicationRecord
  has_many :sales
  has_many :cars, through: :sales
end
