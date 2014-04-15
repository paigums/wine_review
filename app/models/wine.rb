class Wine < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	VARIETALS = ['Pinot Grigio', 'Champagne', 'Pinot Noir', 'Box of Wine', 'Cabernet Sauvignon', 'Moscato' ]
	scope :bargains, -> { where('price < 16.00') }
	scope :by, ->(author) { where('varietal = ?', varietal) }
	validates :name, :year, :winery, :country, :varietal, :price, presence: true
	validates :year,
	numericality: { only_integer: true, greater_than_or_equal_to: 0 },
	unless: "year.blank?"
   	validates :price, 
    numericality: { greater_than_or_equal_to: 0 },
    if: "price.present?"

    	
def average_stars
  reviews.average(:stars)
end

end
