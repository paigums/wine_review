module WinesHelper

	def format_average_ratings(wine)
	  average = wine.average_ratings
	  if average
	    pluralize(number_with_precision(average, precision: 1), 'rating')
	  else
	    'No ratings'
	  end
	end

	def date_select(object_name, method, options = {}, html_options = {})
        Tags::DateSelect.new(object_name, method, self, options, html_options).render
    end
end
