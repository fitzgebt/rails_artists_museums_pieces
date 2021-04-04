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
        @piece = Piece.find_by_id(params[:id])
    end

    def update
        @piece = Piece.find_by_id(params[:id])
        if @piece.update(piece_params)
            redirect_to museum_path(@piece.museum)
        else
            render 'edit'
        end
    end

    def destroy
        piece = Piece.find_by_id(params[:id])
        if current_user.id == piece.artist_id
            name = piece.name
            piece.destroy
            message = "#{name} Successfully Removed"
            redirect_to artist_path(piece.artist_id), flash: {message: message}
        end
    end

    private
  
    def piece_params
      params.require(:piece).permit(:artist_id, :museum_id, :name, :year_created, :image, :image_description)
    end
end
