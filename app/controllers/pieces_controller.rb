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
        if params[:piece][:name] == "" || params[:piece][:year_created] == ""
            @errors = ["Piece must have name and Year"]
            redirect_to edit_piece_path(@piece)
        else
            @piece.update(name: params[:piece][:name], year_created: params[:piece][:year_created], image: params[:piece][:image], image_description: params[:piece][:image_description])
            redirect_to museum_path(@piece.museum)
        end
    end

    def destroy
        piece = Piece.find_by_id(params[:id])
        if current_user.id == piece.artist_id
            piece.destroy
            message = "Piece Successfully Removed"
            redirect_to artist_path(piece.artist_id), flash: {message: message}
        end
    end

    private
  
    def piece_params
      params.require(:piece).permit(:artist_id, :museum_id, :name, :year_created, :image, :image_description)
    end
end
