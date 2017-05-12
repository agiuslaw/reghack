class Car < ApplicationRecord
  has_many :sales
  has_many :dealerships, through: :sales
end
