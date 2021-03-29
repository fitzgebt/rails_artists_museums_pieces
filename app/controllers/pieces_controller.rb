class PiecesController < ApplicationController

    
    def index
        @pieces = Piece.all
    end

    def new
        @piece = Piece.new
    end

    def create
        piece = Piece.create(piece_params)
        message = piece.make_art
        redirect_to artist_path(piece.artist), flash: {message: message}
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
  
    def piece_params
      params.require(:piece).permit(:artist_id, :museum_id)
    end
end
