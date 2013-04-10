class MovieController < ApplicationController
	attr_accessor :m, :search_results, :q



	def search_result
		@q = params[:movie_query]
		@search_results = Movie_Search.new(@q)
		@search_results = @search_results.search_results
		
	end

	def single_movie_info
		@imdb_id = params[:id]
		@m = Movie.new(@imdb_id)

	end

end
