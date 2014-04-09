class Wine < ActiveRecord::Base
	scope :bargains, -> { where('price < 16.00') }
scope :by, ->(author) { where('varietal = ?', varietal) }
	validates :name, :year, :winery, :country, :varietal, :price, presence: true
	validates :year,
	numericality: { only_integer: true, greater_than_or_equal_to: 0 },
	unless: "year.blank?"
   	validates :price, 
    numericality: { greater_than_or_equal_to: 0 },
    if: "price.present?"
end
