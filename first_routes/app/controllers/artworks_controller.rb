class ArtworksController < ApplicationController

def index
    artwork = Artwork.all
    render json: artwork

end

def show
    artwork = Artwork.find(params[:id])
    render json: artwork

end



private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)    
    end


#edit
end