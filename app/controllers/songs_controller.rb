class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :'songs/new'
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  private
  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
