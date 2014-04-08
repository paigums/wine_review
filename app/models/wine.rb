class Wine < ActiveRecord::Base
	validates :name, :year, :winery, :country, :varietal, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 0 },
   unless: "year.blank?"
validates :name, 
    numericality: { greater_than_or_equal_to: 0 },
    if: "name.present?"
end
