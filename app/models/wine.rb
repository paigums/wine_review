class Wine < ActiveRecord::Base
has_many :log_entries, dependent: :destroy
scope :bargains, -> { where('price < 15.00') }
scope :by, ->(varietal) { where('varietal = ?', varietal) }
validates :name, :varietal, :year, :price, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 0 },
   unless: "year.blank?"
validates :price,
    numericality: { greater_than_or_equal_to: 0 },
    if: "price.present?"

	def average_ratings
	if log_entries.loaded?
	log_entries.map(&:rating).compact.average
	else
	log_entries.average(:rating)
	end
	end
end
