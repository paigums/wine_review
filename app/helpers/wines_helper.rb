module WinesHelper

	def format_average_stars(wine)
	  average = wine.average_stars
	  if average
	    pluralize(number_with_precision(average, precision: 1), 'star')
	  else
	    'No reviews'
	  end
	end
end
