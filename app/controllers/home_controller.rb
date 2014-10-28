class HomeController < ApplicationController

  def index
    @books = Book.all
    @books_array = @books.sort { |a,b| a.rank <=> b.rank }
    @books_array.reverse!
    @movies = Movie.all
    @movies_array = @movies.sort { |a,b| a.rank <=> b.rank }
    @movies_array.reverse!

  end

end
