class ArtistsController < ApplicationController
  
  def new
    @artist = Artist.new 
  end   
  
  def create
    @artist = Artist.new(params.require(:artist).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end
  
  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end 
  
  def update
    @artist = Artist.find(params[:id])
    @artist = Artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

end
