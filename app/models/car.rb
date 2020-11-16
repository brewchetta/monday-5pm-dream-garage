class Car < ApplicationRecord
  belongs_to :brand
  has_many :pictures

  def name
    "#{year} #{brand.name} #{model}"
  end

  validates :year, presence: true, numericality: { greater_than_or_equal_to: Date.today.year - 90, less_than_or_equal_to: Date.today.year }

  validates_presence_of :model

  validates_associated :brand

end
