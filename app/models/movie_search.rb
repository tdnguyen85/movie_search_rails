require 'json'
require 'open-uri'
require 'uri'

class Movie_Search
	
	attr_accessor  :search_results, :search_title

	def initialize(q)
		@q = q
		file_search = open("http://www.omdbapi.com/?s=#{URI.escape(@q)}")
		@search_results = JSON.load(file_search.read)
		#return (q + "hello")
	end


	# def get_list
	# 	get_list = @search_results["imdbID"]
	# end
end





