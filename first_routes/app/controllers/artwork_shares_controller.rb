class ArtworkSharesController < ApplicationController

    def index
        share = ArtworkShare.all
        render json: share
        
    end

    def create
        share = ArtworkShare.new(artwork_share_params)
        
        if share.save
            redirect_to artwork_shares_url
        else
            render json: share.error.full_messages, status: 422
        end

    end

    def destroy
        share = ArtworkShare.find(params[:id])
        share.destroy
        redirect_to artwork_shares_url

    end


    private
    def artwork_share_params
        params.require(:art_share).permit(:artwork_id, :viewer_id)
    end


end