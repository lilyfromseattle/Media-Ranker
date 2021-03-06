class AlbumsController < ApplicationController
  def index
    @albums = Album.all.order(rank: :desc)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
      if @album.update(params.require(:album).permit(:name, :artist, :description, :rank))
        redirect_to albums_path, notice: "album was successfully updated."
      else
        render :edit
      end
  end

  def create
    @album = Album.new(params.require(:album).permit(:name, :artist, :description, :rank))
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

  def upvote
    @album = Album.all.find(params[:id])
    @album.rank += 1
    redirect_to albums_path
    @album.save
  end

  def downvote
    @album = Album.all.find(params[:id])
    if @album.rank >= 1
      @album.rank -= 1
    end
    @album.save
    redirect_to albums_path
  end

end
