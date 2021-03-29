class ArtistsController < ApplicationController

    def index
    end

    def new
    end

    def create
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
  
    def artist_params
      params.require(:artist).permit(:username, :name, :hometown, :password)
    end
end
