require 'json'
require 'open-uri'
require 'uri'

class Movie
	attr_accessor :id, :imdb_results, :title, :plot, :year, :rated, :released, :runtime, :genre, :imdbRating, :director, :writer, :actors


	def initialize(id)
		@id = id
		file_search = open("http://www.omdbapi.com/?i=#{URI.escape(@id)}")
		@imdb_results = JSON.load(file_search.read)
	end

	def title
		title = @imdb_results["Title"]
	end

	def plot
		plot = @imdb_results["Plot"]
	end

	def year
		year = @imdb_results["Year"]
	end

	def rated
		rated = @imdb_results["Rated"]
	end 

	def released
		released = @imdb_results["Released"]
	end

	def runtime
		runtime = @imdb_results["Runtime"]
	end

	def genre
		genre = @imdb_results["Genre"]
	end

	def imdbRating
		imdbRating = @imdb_results["imdbRating"]
	end
	
	def director
		director = @imdb_results["Director"]
	end

	def writer
		writer = @imdb_results["Writer"]
	end

	def actors
		actors = @imdb_results["Actors"]
	end

	def poster
		poster = @imdb_results["Poster"]
	end

 end



#tt0076759
	