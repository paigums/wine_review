module WinesHelper


	def formatted_time(time)
		time.strftime("%B %d, %Y at 1:%M %p")
	end

	def format_average_rating(wine)
	  average = wine.average_rating
	  if average
	    pluralize(number_with_precision(average, precision: 1), 'rating')
	  else
	    'No ratings'
	  end
	end

	#def date_select(object_name, method, options = {}, html_options = {})
    #    Tags::DateSelect.new(object_name, method, self, options, html_options).render
    #end
end
