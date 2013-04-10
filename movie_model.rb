class Movie
	attr_accessor :imdb_id, :movie_title, :plot, :result
	def initialize(imdb_id)
		file = open("http://www.omdbapi.com/?i=#{URI.escape(imdb_id)}")
	  @result = JSON.load(file.read)
	  @movie_title = @result["Title"]
	  @plot = @result["Plot"]
	  @imdb_id = imdb_id
	end

	def

end


get '/movies' do 
	@id = params[:id]
	movie = Movie.new(@id)
	@title = movie.title
	@plot = movie.plot
	@result = movie.result
end