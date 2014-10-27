class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def update
    @movie = Movie.find(params[:id])
      if @movie.update(params.require(:movie).permit(:name, :director, :description, :rank))
        redirect_to movies_path, notice: "movie was successfully updated."
      else
        render :edit
      end
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:name, :director, :description, :rank))
    if @movie.save
      redirect_to movies_path, notice: "movie was created successfully."
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.all.find(params[:id])
    @movie.destroy
    redirect_to movies_path, notice: "movie was successfully destroyed."
  end

end
