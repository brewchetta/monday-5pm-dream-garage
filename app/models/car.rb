class Car < ApplicationRecord
  has_many :pictures

  def name
    "#{year} #{make} #{model}"
  end
end
