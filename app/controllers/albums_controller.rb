class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    @albums_array = @albums.sort { |a,b| a.rank <=> b.rank }
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def update
    @album = Album.find(params[:id])
      if @album.update(params.require(:album).permit(:name, :director, :description, :rank))
        redirect_to albums_path, notice: "album was successfully updated."
      else
        render :edit
      end
  end

  def create
    @album = Album.new(params.require(:album).permit(:name, :director, :description, :rank))
    if @album.save
      redirect_to albums_path, notice: "album was created successfully."
    else
      render :new
    end
  end

  def destroy
    @album = Album.all.find(params[:id])
    @album.destroy
    redirect_to albums_path, notice: "album was successfully destroyed."
  end

end
