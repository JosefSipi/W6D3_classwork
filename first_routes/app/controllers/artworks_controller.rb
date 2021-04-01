class ArtworksController < ApplicationController

# def index
#     artwork = Artwork.all
#     render json: artwork

# end

def index
    value = params[:user_id]
    user_art = Artwork
        .joins(:shares)
        .where('artworks.artist_id = :value OR artwork_shares.viewer_id = :value', value: value)


    render json: user_art
end



def show
    artwork = Artwork.find(params[:id])
    render json: artwork
end

def create
    artwork = Artwork.new(artwork_params)
    if artwork.save 
        render json: artwork 
    else 
        render json: artwork.error.full_messages, status: 422
    end 
end 

def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy 
    redirect_to artworks_url 
end 

def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
        redirect_to artwork_url(artwork)
    else 
        render json: artwork.errors.full_messages, status: 422
    end 
end 



private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)    
    end
end